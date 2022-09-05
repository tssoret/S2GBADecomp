# Style Guide

## Notes
- Before you try to contribute, please read through the styling guide first.
    - If you are unsure about some things, join the Sim2Server's Discord Server to discuss.

<details>
	<summary>Prefix Styles</summary>

## Global Variables
***Global Variables, aka variables that are inside External Work RAM / Internal Work RAM should be prefixed with `g`.***

```c
u8 gSomeVar = 0x0;
```

---


## Definitions
***`#define`'s should be all UPPERCASE.***

```c
#define YOUR_DEFINITION 1
```

---


## Images
***ROM Data images should be prefixed with `img`.***

```arm
@ This is the assembly data code.
    .global imgSomething

imgSomething:
    .incbin "baserom.gba", 0x0, 0x4
```

```c
extern const void *imgSomething;
```

---


## Numbers
***If using Hexadecimal, do NOT mix UPPERCASE Digits and lowercase Digits. They SHOULD all be UPPERCASE Digits, like `0xFF`.***

</details>




<details>
	<summary>Other things</summary>

## Functions
***Functions should be declared like this:***

```c
/* Always use open brackets on the line of the function declaration. */
void function(u8 arg) {

}

/* Don't put them on the line below. */
void function(u8 arg)
{

}
```

- Always Document a C-function, if you don't know what it does, don't even contribute it.
    - The purpose of this Decomp is to *understand* and *document* the code, not just simply "decomp" it with no documentations AT ALL.
---


## If, Else
***This should be done this way:***

```c
/* A space after an if. */
if (true) {

}

/* Don't directly put the opening parenthesis after the if. */
if(true) {

}

/* If the if is an one-line instruction, do this: */
if (true) something();

/* If there is an else on it as well (multiline), then do it like this: */
if (true) something();
else {
	somethingElse();
}

/* If the if is a multiline instruction and the else a single one, do this: */
if (true) {
	something();

} else somethingElse(); // A free line after the last instruction on the if.

/* If both, if and else are one line, then do it like this and line it up: */
if (true) something();
else      somethingElse();

/* In case of multiple else's, prefer switch cases whenever possible, if not do it like this: */
u8 test = 0;

if (test == 0) {
	something0();

} else if (test == 3) {
	something3();

} else {
	somethingElse();
}
```

---


## Switch
***Switch cases should be done this way:***

```c
u8 test = 0;

/* The bracket on the same line as the switch, and indent the cases and then it's content. */
switch(test) {
	case 0:
		/* Do something. */
		break;

	case 1:
		/* Do Something. */
		break;
}

/* Don't put the brackets on the next line, and don't have everything at the same indent level. */
switch(test)
{
	case 0:
	/* Do something. */
	break;

	case 1:
	/* Do something. */
	break;
}

/* Or don't use this UGLY style. */
switch(test)
{
case 0:
/* Do something. */
break;

case 1:
/* Do something. */
break;
}
```

---


## Pointers
***Pointers should point to the variable name, not the type or the middle.***

```c
/* Do this. */
u8 *ptr;
/* Not this. */
u8* ptr;
/* And not this. */
u8 * ptr;
```

---


## Structs
***Structs should be done this way:***

```c
/*
	Struct name Capitalized, Members as well.
	Also line up all the Member names too, in case of a u8 and u16 variable, add a space after u8 to line it up.
*/
struct SomeStruct {
	u8  Member1;
	u16 OtherMember;
};

/*
	If you declare a struct, do it like this:
	
	Basically: Use '.Member =' so it's easier modifiable when a big struct exists as an example.
	Also line the values up as well.

	ALSO, DON'T put the opening bracket on the next line after the '=', this is ugly.
	If you know the amount of things from an array, put them in the [].
*/
struct SomeStruct gSomeName[] = {
	{
		.Member1     = 1,
		.OtherMember = 2
	},
	{
		.Member1     = 2,
		.OtherMember = 4
	},
	/* ... */
}
```

---


## C89 Restrictions
***Since we can only use C89, you have to keep in mind of the following things:***

- Local variables can only be declared on the top of the function.
- Probably some other stuff i can't think of right now.

</details>