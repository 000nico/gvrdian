module bit;

macro bool bit_get(value, bit)
{
	return ((ulong)value & ((ulong)1 << bit)) != 0;
}

macro ulong bit_set(value, bit)
{
	return ((ulong)value | ((ulong)1 << bit));
}

macro ulong bit_clear(value, bit)
{
	return ((ulong)value & ~((ulong)1 << bit));
}

macro ulong bit_toggle(value, bit)
{
	return ((ulong)value ^ ((ulong)1 << bit));
}