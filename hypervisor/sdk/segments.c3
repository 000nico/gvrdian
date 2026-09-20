module segments;

import bit;

struct SegmentDescriptor {
	ushort limit_low;
	ushort base_low;
	char base_mid;
	char access;
	char limit_high_flags;
	char base_high;
}

fn ulong get_base(ulong gdt_base, ushort selector) {
	if (selector == 0) return 0;

	ulong addr = gdt_base + (ulong)(selector & 0xFFF8);
	SegmentDescriptor* desc = (SegmentDescriptor*)addr;

	ulong base = (ulong)desc.base_low;
	base = base | ((ulong)desc.base_mid << 16);
	base = base | ((ulong)desc.base_high << 24);

	return base;
}

fn ulong get_limit(ulong gdt_base, ushort selector) {
	if (selector == 0) return 0;

	ulong addr = gdt_base + (ulong)(selector & 0xFFF8);
	SegmentDescriptor* desc = (SegmentDescriptor*)addr;

	ulong limit = (ulong)desc.limit_low;
	uint limit_high = (uint)desc.limit_high_flags & 0x0F;
	limit = limit | ((ulong)limit_high << 16);

	if (bit::bit_get(desc.limit_high_flags, 7)) {
		limit = (limit << 12) | 0xFFF;
	}

	return limit;
}

fn uint get_access_rights(ulong gdt_base, ushort selector) {
	if (selector == 0) return 0x10000; // unusable

	ulong addr = gdt_base + (ulong)(selector & 0xFFF8);
	SegmentDescriptor* desc = (SegmentDescriptor*)addr;

	uint access = (uint)desc.access;

	uint flags_bits = (uint)desc.limit_high_flags & 0xF0;
	access = access | (flags_bits << 8);

	return access;
}