module bit;

fn bool bit_get(Type value, int bit) @if(types::is_int(Type))
{
	return (value & (Type)(1 << bit)) != 0;
}

fn Type bit_set(Type value, int bit) @if(types::is_int(Type))
{
	return value | (Type)(1 << bit);
}

fn Type bit_clear(Type value, int bit) @if(types::is_int(Type))
{
	return value & ~((Type)(1 << bit));
}

fn Type bit_toggle(Type value, int bit) @if(types::is_int(Type))
{
	return value ^ (Type)(1 << bit);
}