.class public final Lcom/itextpdf/text/pdf/Pfm2afm;
.super Ljava/lang/Object;
.source "Pfm2afm.java"


# instance fields
.field private Win2PSStd:[I

.field private WinChars:[Ljava/lang/String;

.field private WinClass:[I

.field private ascender:S

.field private ascent:S

.field private avgwidth:S

.field private bitoff:I

.field private bits:I

.field private brkchar:B

.field private capheight:S

.field private charset:B

.field private chartab:I

.field private copyright:Ljava/lang/String;

.field private defchar:B

.field private descender:S

.field private device:I

.field private extleading:S

.field private extlen:S

.field private face:I

.field private firstchar:I

.field private fontname:I

.field private h_len:I

.field private horres:S

.field private in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

.field private intleading:S

.field private isMono:Z

.field private italic:B

.field private kernpairs:I

.field private kind:B

.field private lastchar:I

.field private maxwidth:S

.field private out:Ljava/io/PrintWriter;

.field private overs:B

.field private pixheight:S

.field private pixwidth:S

.field private points:S

.field private psext:I

.field private res1:I

.field private res2:I

.field private type:S

.field private uline:B

.field private verres:S

.field private vers:S

.field private weight:S

.field private widthby:S

.field private xheight:S


# direct methods
.method private constructor <init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;Ljava/io/OutputStream;)V
    .locals 3
    .parameter "in"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x100

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 502
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->Win2PSStd:[I

    .line 526
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->WinClass:[I

    .line 549
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "W00"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "W01"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "W02"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "W03"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "macron"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "breve"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "dotaccent"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "W07"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ring"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "W09"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "W0a"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "W0b"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "W0c"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "W0d"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "W0e"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "W0f"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "hungarumlaut"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "ogonek"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "caron"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "W13"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "W14"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "W15"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "W16"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "W17"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "W18"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "W19"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "W1a"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "W1b"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "W1c"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "W1d"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "W1e"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "W1f"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "space"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "exclam"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "quotedbl"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "numbersign"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "dollar"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "percent"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "ampersand"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "quotesingle"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "parenleft"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "parenright"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "asterisk"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "plus"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "comma"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "hyphen"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "period"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "slash"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "zero"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "one"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "two"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "three"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "four"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "five"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "six"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "seven"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "eight"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "nine"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "colon"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "semicolon"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "less"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "equal"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "greater"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "question"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "at"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "A"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "B"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "C"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "D"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "E"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "bracketleft"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "backslash"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "bracketright"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "asciicircum"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "underscore"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "grave"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "b"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "d"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "f"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "g"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "i"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "j"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "k"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "n"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "q"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "s"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "t"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "u"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "w"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "x"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "y"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "braceleft"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "bar"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "braceright"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "asciitilde"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "W7f"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "euro"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "W81"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "quotesinglbase"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "florin"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "quotedblbase"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "ellipsis"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "dagger"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "daggerdbl"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "circumflex"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "perthousand"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "Scaron"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "guilsinglleft"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "OE"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "W8d"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "Zcaron"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "W8f"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "W90"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "quoteleft"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "quoteright"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "quotedblleft"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "quotedblright"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "bullet"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "endash"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "emdash"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "tilde"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "trademark"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "scaron"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "guilsinglright"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "oe"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "W9d"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "zcaron"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "Ydieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "reqspace"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "exclamdown"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "cent"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "sterling"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "currency"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "yen"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "brokenbar"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "section"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "dieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "copyright"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "ordfeminine"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "guillemotleft"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "logicalnot"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "syllable"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "registered"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "macron"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "degree"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "plusminus"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "twosuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "threesuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "acute"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "mu"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "paragraph"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "periodcentered"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "cedilla"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "onesuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "ordmasculine"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "guillemotright"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "onequarter"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "onehalf"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "threequarters"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "questiondown"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "Agrave"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "Aacute"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "Acircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "Atilde"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "Adieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "Aring"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "AE"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "Ccedilla"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "Egrave"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "Eacute"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "Ecircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "Edieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "Igrave"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "Iacute"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "Icircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "Idieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "Eth"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "Ntilde"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "Ograve"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "Oacute"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "Ocircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "Otilde"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "Odieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "multiply"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "Oslash"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "Ugrave"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "Uacute"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "Ucircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "Udieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "Yacute"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "Thorn"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "germandbls"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "agrave"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "aacute"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "acircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "atilde"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "adieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "aring"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "ae"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "ccedilla"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, "egrave"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "eacute"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "ecircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v2, "edieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "igrave"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v2, "iacute"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "icircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string v2, "idieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "eth"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "ntilde"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "ograve"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "oacute"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "ocircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v2, "otilde"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string v2, "odieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v2, "divide"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string v2, "oslash"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v2, "ugrave"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string v2, "uacute"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string v2, "ucircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string v2, "udieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string v2, "yacute"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string v2, "thorn"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string v2, "ydieresis"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->WinChars:[Ljava/lang/String;

    .line 155
    iput-object p1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    .line 156
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "ISO-8859-1"

    invoke-direct {v1, p2, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    .line 157
    return-void

    .line 502
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc5t 0x0t 0x0t 0x0t
        0xc6t 0x0t 0x0t 0x0t
        0xc7t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xcat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0x0t 0x0t 0x0t
        0xcet 0x0t 0x0t 0x0t
        0xcft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x26t 0x0t 0x0t 0x0t
        0xa9t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
        0x37t 0x0t 0x0t 0x0t
        0x38t 0x0t 0x0t 0x0t
        0x39t 0x0t 0x0t 0x0t
        0x3at 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x3dt 0x0t 0x0t 0x0t
        0x3et 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x0t 0x0t
        0x40t 0x0t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0x43t 0x0t 0x0t 0x0t
        0x44t 0x0t 0x0t 0x0t
        0x45t 0x0t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
        0x47t 0x0t 0x0t 0x0t
        0x48t 0x0t 0x0t 0x0t
        0x49t 0x0t 0x0t 0x0t
        0x4at 0x0t 0x0t 0x0t
        0x4bt 0x0t 0x0t 0x0t
        0x4ct 0x0t 0x0t 0x0t
        0x4dt 0x0t 0x0t 0x0t
        0x4et 0x0t 0x0t 0x0t
        0x4ft 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x51t 0x0t 0x0t 0x0t
        0x52t 0x0t 0x0t 0x0t
        0x53t 0x0t 0x0t 0x0t
        0x54t 0x0t 0x0t 0x0t
        0x55t 0x0t 0x0t 0x0t
        0x56t 0x0t 0x0t 0x0t
        0x57t 0x0t 0x0t 0x0t
        0x58t 0x0t 0x0t 0x0t
        0x59t 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
        0x5ct 0x0t 0x0t 0x0t
        0x5dt 0x0t 0x0t 0x0t
        0x5et 0x0t 0x0t 0x0t
        0x5ft 0x0t 0x0t 0x0t
        0xc1t 0x0t 0x0t 0x0t
        0x61t 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
        0x67t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
        0x6at 0x0t 0x0t 0x0t
        0x6bt 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
        0x6dt 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
        0x70t 0x0t 0x0t 0x0t
        0x71t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
        0x74t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0x76t 0x0t 0x0t 0x0t
        0x77t 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
        0x7bt 0x0t 0x0t 0x0t
        0x7ct 0x0t 0x0t 0x0t
        0x7dt 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
        0x7ft 0x0t 0x0t 0x0t
        0x80t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb8t 0x0t 0x0t 0x0t
        0xa6t 0x0t 0x0t 0x0t
        0xb9t 0x0t 0x0t 0x0t
        0xbct 0x0t 0x0t 0x0t
        0xb2t 0x0t 0x0t 0x0t
        0xb3t 0x0t 0x0t 0x0t
        0xc3t 0x0t 0x0t 0x0t
        0xbdt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xact 0x0t 0x0t 0x0t
        0xeat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xaat 0x0t 0x0t 0x0t
        0xbat 0x0t 0x0t 0x0t
        0xb7t 0x0t 0x0t 0x0t
        0xb1t 0x0t 0x0t 0x0t
        0xd0t 0x0t 0x0t 0x0t
        0xc4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xadt 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa1t 0x0t 0x0t 0x0t
        0xa2t 0x0t 0x0t 0x0t
        0xa3t 0x0t 0x0t 0x0t
        0xa8t 0x0t 0x0t 0x0t
        0xa5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xa7t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xe3t 0x0t 0x0t 0x0t
        0xabt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc5t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xc2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xb6t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0xcbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xebt 0x0t 0x0t 0x0t
        0xbbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xbft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xe1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xe9t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xf1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xf9t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 526
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static convert(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;Ljava/io/OutputStream;)V
    .locals 2
    .parameter "in"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Lcom/itextpdf/text/pdf/Pfm2afm;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/text/pdf/Pfm2afm;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;Ljava/io/OutputStream;)V

    .line 167
    .local v0, p:Lcom/itextpdf/text/pdf/Pfm2afm;
    invoke-direct {v0}, Lcom/itextpdf/text/pdf/Pfm2afm;->openpfm()V

    .line 168
    invoke-direct {v0}, Lcom/itextpdf/text/pdf/Pfm2afm;->putheader()V

    .line 169
    invoke-direct {v0}, Lcom/itextpdf/text/pdf/Pfm2afm;->putchartab()V

    .line 170
    invoke-direct {v0}, Lcom/itextpdf/text/pdf/Pfm2afm;->putkerntab()V

    .line 171
    invoke-direct {v0}, Lcom/itextpdf/text/pdf/Pfm2afm;->puttrailer()V

    .line 172
    iget-object v1, v0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 173
    return-void
.end method

.method private openpfm()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 234
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->vers:S

    .line 235
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->h_len:I

    .line 236
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lcom/itextpdf/text/pdf/Pfm2afm;->readString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->copyright:Ljava/lang/String;

    .line 237
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->type:S

    .line 238
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->points:S

    .line 239
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->verres:S

    .line 240
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->horres:S

    .line 241
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->ascent:S

    .line 242
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->intleading:S

    .line 243
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->extleading:S

    .line 244
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->italic:B

    .line 245
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->uline:B

    .line 246
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->overs:B

    .line 247
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->weight:S

    .line 248
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->charset:B

    .line 249
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->pixwidth:S

    .line 250
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->pixheight:S

    .line 251
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->kind:B

    .line 252
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->avgwidth:S

    .line 253
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->maxwidth:S

    .line 254
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->firstchar:I

    .line 255
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->lastchar:I

    .line 256
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->defchar:B

    .line 257
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->brkchar:B

    .line 258
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->widthby:S

    .line 259
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->device:I

    .line 260
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->face:I

    .line 261
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->bits:I

    .line 262
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->bitoff:I

    .line 263
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->extlen:S

    .line 264
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->psext:I

    .line 265
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->chartab:I

    .line 266
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->res1:I

    .line 267
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->kernpairs:I

    .line 268
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->res2:I

    .line 269
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->fontname:I

    .line 270
    iget v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->h_len:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->length()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-short v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->extlen:S

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->fontname:I

    const/16 v1, 0x4b

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->fontname:I

    const/16 v1, 0x200

    if-le v0, v1, :cond_1

    .line 271
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "not.a.valid.pfm.file"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    iget v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->psext:I

    add-int/lit8 v1, v1, 0xe

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 273
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->capheight:S

    .line 274
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->xheight:S

    .line 275
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->ascender:S

    .line 276
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->descender:S

    .line 277
    return-void
.end method

.method private outchar(IILjava/lang/String;)V
    .locals 2
    .parameter "code"
    .parameter "width"
    .parameter "name"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    const-string v1, "C "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 222
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/Pfm2afm;->outval(I)V

    .line 223
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    const-string v1, " ; WX "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 224
    invoke-direct {p0, p2}, Lcom/itextpdf/text/pdf/Pfm2afm;->outval(I)V

    .line 225
    if-eqz p3, :cond_0

    .line 226
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    const-string v1, " ; N "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    invoke-virtual {v0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    const-string v1, " ;\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method private outval(I)V
    .locals 2
    .parameter "n"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 214
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 215
    return-void
.end method

.method private putchartab()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x100

    .line 365
    iget v6, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->lastchar:I

    iget v7, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->firstchar:I

    sub-int/2addr v6, v7

    add-int/lit8 v1, v6, 0x1

    .line 366
    .local v1, count:I
    new-array v2, v1, [I

    .line 367
    .local v2, ctabs:[I
    iget-object v6, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    iget v7, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->chartab:I

    int-to-long v7, v7

    invoke-virtual {v6, v7, v8}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 368
    const/4 v5, 0x0

    .local v5, k:I
    :goto_0
    if-ge v5, v1, :cond_0

    .line 369
    iget-object v6, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShortLE()I

    move-result v6

    aput v6, v2, v5

    .line 368
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 370
    :cond_0
    new-array v0, v9, [I

    .line 371
    .local v0, back:[I
    iget-byte v6, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->charset:B

    if-nez v6, :cond_2

    .line 372
    iget v3, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->firstchar:I

    .local v3, i:I
    :goto_1
    iget v6, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->lastchar:I

    if-gt v3, v6, :cond_2

    .line 373
    iget-object v6, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->Win2PSStd:[I

    aget v6, v6, v3

    if-eqz v6, :cond_1

    .line 374
    iget-object v6, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->Win2PSStd:[I

    aget v6, v6, v3

    aput v3, v0, v6

    .line 372
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 378
    .end local v3           #i:I
    :cond_2
    iget-object v6, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    const-string v7, "StartCharMetrics"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 379
    invoke-direct {p0, v1}, Lcom/itextpdf/text/pdf/Pfm2afm;->outval(I)V

    .line 380
    iget-object v6, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 383
    iget-byte v6, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->charset:B

    if-eqz v6, :cond_4

    .line 388
    iget v3, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->firstchar:I

    .restart local v3       #i:I
    :goto_2
    iget v6, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->lastchar:I

    if-gt v3, v6, :cond_8

    .line 389
    iget v6, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->firstchar:I

    sub-int v6, v3, v6

    aget v6, v2, v6

    if-eqz v6, :cond_3

    .line 390
    iget v6, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->firstchar:I

    sub-int v6, v3, v6

    aget v6, v2, v6

    const/4 v7, 0x0

    invoke-direct {p0, v3, v6, v7}, Lcom/itextpdf/text/pdf/Pfm2afm;->outchar(IILjava/lang/String;)V

    .line 388
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 395
    .end local v3           #i:I
    :cond_4
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    if-ge v3, v9, :cond_6

    .line 396
    aget v4, v0, v3

    .line 397
    .local v4, j:I
    if-eqz v4, :cond_5

    .line 398
    iget v6, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->firstchar:I

    sub-int v6, v4, v6

    aget v6, v2, v6

    iget-object v7, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->WinChars:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-direct {p0, v3, v6, v7}, Lcom/itextpdf/text/pdf/Pfm2afm;->outchar(IILjava/lang/String;)V

    .line 399
    iget v6, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->firstchar:I

    sub-int v6, v4, v6

    const/4 v7, 0x0

    aput v7, v2, v6

    .line 395
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 403
    .end local v4           #j:I
    :cond_6
    iget v3, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->firstchar:I

    :goto_4
    iget v6, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->lastchar:I

    if-gt v3, v6, :cond_8

    .line 404
    iget v6, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->firstchar:I

    sub-int v6, v3, v6

    aget v6, v2, v6

    if-eqz v6, :cond_7

    .line 405
    const/4 v6, -0x1

    iget v7, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->firstchar:I

    sub-int v7, v3, v7

    aget v7, v2, v7

    iget-object v8, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->WinChars:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-direct {p0, v6, v7, v8}, Lcom/itextpdf/text/pdf/Pfm2afm;->outchar(IILjava/lang/String;)V

    .line 403
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 410
    :cond_8
    iget-object v6, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    const-string v7, "EndCharMetrics\n"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method private putheader()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    .line 280
    iget-object v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    const-string v2, "StartFontMetrics 2.0\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 281
    iget-object v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->copyright:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Comment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->copyright:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    const-string v2, "FontName "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    iget v2, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->fontname:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 285
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/Pfm2afm;->readString()Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, fname:Ljava/lang/String;
    iget-object v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 287
    iget-object v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    const-string v2, "\nEncodingScheme "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 288
    iget-byte v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->charset:B

    if-eqz v1, :cond_5

    .line 289
    iget-object v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    const-string v2, "FontSpecific\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 297
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FullName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2d

    const/16 v4, 0x20

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 298
    iget v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->face:I

    if-eqz v1, :cond_1

    .line 299
    iget-object v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    iget v2, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->face:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 300
    iget-object v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nFamilyName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/itextpdf/text/pdf/Pfm2afm;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 303
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    const-string v2, "\nWeight "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 304
    iget-short v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->weight:S

    const/16 v2, 0x1db

    if-gt v1, v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bold"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_6

    .line 305
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    const-string v2, "Bold"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 313
    :goto_1
    iget-object v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    const-string v2, "\nItalicAngle "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 314
    iget-byte v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->italic:B

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "italic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_b

    .line 315
    :cond_3
    iget-object v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    const-string v2, "-12.00"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 325
    :goto_2
    iget-object v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    const-string v2, "\nIsFixedPitch "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 326
    iget-byte v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->kind:B

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    iget-short v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->avgwidth:S

    iget-short v2, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->maxwidth:S

    if-ne v1, v2, :cond_c

    .line 328
    :cond_4
    iget-object v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 329
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->isMono:Z

    .line 341
    :goto_3
    iget-object v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    const-string v2, "\nFontBBox"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 342
    iget-boolean v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->isMono:Z

    if-eqz v1, :cond_d

    .line 343
    const/16 v1, -0x14

    invoke-direct {p0, v1}, Lcom/itextpdf/text/pdf/Pfm2afm;->outval(I)V

    .line 346
    :goto_4
    iget-short v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->descender:S

    add-int/lit8 v1, v1, 0x5

    neg-int v1, v1

    invoke-direct {p0, v1}, Lcom/itextpdf/text/pdf/Pfm2afm;->outval(I)V

    .line 347
    iget-short v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->maxwidth:S

    add-int/lit8 v1, v1, 0xa

    invoke-direct {p0, v1}, Lcom/itextpdf/text/pdf/Pfm2afm;->outval(I)V

    .line 348
    iget-short v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->ascent:S

    add-int/lit8 v1, v1, 0x5

    invoke-direct {p0, v1}, Lcom/itextpdf/text/pdf/Pfm2afm;->outval(I)V

    .line 353
    iget-object v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    const-string v2, "\nCapHeight"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 354
    iget-short v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->capheight:S

    invoke-direct {p0, v1}, Lcom/itextpdf/text/pdf/Pfm2afm;->outval(I)V

    .line 355
    iget-object v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    const-string v2, "\nXHeight"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 356
    iget-short v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->xheight:S

    invoke-direct {p0, v1}, Lcom/itextpdf/text/pdf/Pfm2afm;->outval(I)V

    .line 357
    iget-object v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    const-string v2, "\nDescender"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 358
    iget-short v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->descender:S

    neg-int v1, v1

    invoke-direct {p0, v1}, Lcom/itextpdf/text/pdf/Pfm2afm;->outval(I)V

    .line 359
    iget-object v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    const-string v2, "\nAscender"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 360
    iget-short v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->ascender:S

    invoke-direct {p0, v1}, Lcom/itextpdf/text/pdf/Pfm2afm;->outval(I)V

    .line 361
    iget-object v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 362
    return-void

    .line 291
    :cond_5
    iget-object v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    const-string v2, "AdobeStandardEncoding\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 306
    :cond_6
    iget-short v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->weight:S

    const/16 v2, 0x145

    if-ge v1, v2, :cond_7

    iget-short v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->weight:S

    if-nez v1, :cond_8

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "light"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_9

    .line 307
    :cond_8
    iget-object v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    const-string v2, "Light"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 308
    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "black"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_a

    .line 309
    iget-object v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    const-string v2, "Black"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 311
    :cond_a
    iget-object v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    const-string v2, "Medium"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 319
    :cond_b
    iget-object v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 332
    :cond_c
    iget-object v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 333
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->isMono:Z

    goto/16 :goto_3

    .line 345
    :cond_d
    const/16 v1, -0x64

    invoke-direct {p0, v1}, Lcom/itextpdf/text/pdf/Pfm2afm;->outval(I)V

    goto/16 :goto_4
.end method

.method private putkerntab()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xa

    .line 415
    iget v5, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->kernpairs:I

    if-nez v5, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    iget-object v5, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    iget v6, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->kernpairs:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 418
    iget-object v5, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShortLE()I

    move-result v0

    .line 419
    .local v0, count:I
    const/4 v4, 0x0

    .line 420
    .local v4, nzero:I
    mul-int/lit8 v5, v0, 0x3

    new-array v3, v5, [I

    .line 421
    .local v3, kerns:[I
    const/4 v1, 0x0

    .local v1, k:I
    :goto_1
    array-length v5, v3

    if-ge v1, v5, :cond_2

    .line 422
    add-int/lit8 v2, v1, 0x1

    .end local v1           #k:I
    .local v2, k:I
    iget-object v5, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v5

    aput v5, v3, v1

    .line 423
    add-int/lit8 v1, v2, 0x1

    .end local v2           #k:I
    .restart local v1       #k:I
    iget-object v5, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v5

    aput v5, v3, v2

    .line 424
    add-int/lit8 v2, v1, 0x1

    .end local v1           #k:I
    .restart local v2       #k:I
    iget-object v5, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShortLE()S

    move-result v5

    aput v5, v3, v1

    if-eqz v5, :cond_5

    .line 425
    add-int/lit8 v4, v4, 0x1

    move v1, v2

    .end local v2           #k:I
    .restart local v1       #k:I
    goto :goto_1

    .line 427
    :cond_2
    if-eqz v4, :cond_0

    .line 429
    iget-object v5, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    const-string v6, "StartKernData\nStartKernPairs"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 430
    invoke-direct {p0, v4}, Lcom/itextpdf/text/pdf/Pfm2afm;->outval(I)V

    .line 431
    iget-object v5, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 432
    const/4 v1, 0x0

    :goto_2
    array-length v5, v3

    if-ge v1, v5, :cond_4

    .line 433
    add-int/lit8 v5, v1, 0x2

    aget v5, v3, v5

    if-eqz v5, :cond_3

    .line 434
    iget-object v5, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    const-string v6, "KPX "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 435
    iget-object v5, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    iget-object v6, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->WinChars:[Ljava/lang/String;

    aget v7, v3, v1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 436
    iget-object v5, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 437
    iget-object v5, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    iget-object v6, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->WinChars:[Ljava/lang/String;

    add-int/lit8 v7, v1, 0x1

    aget v7, v3, v7

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 438
    add-int/lit8 v5, v1, 0x2

    aget v5, v3, v5

    invoke-direct {p0, v5}, Lcom/itextpdf/text/pdf/Pfm2afm;->outval(I)V

    .line 439
    iget-object v5, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 432
    :cond_3
    add-int/lit8 v1, v1, 0x3

    goto :goto_2

    .line 443
    :cond_4
    iget-object v5, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    const-string v6, "EndKernPairs\nEndKernData\n"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1           #k:I
    .restart local v2       #k:I
    :cond_5
    move v1, v2

    .end local v2           #k:I
    .restart local v1       #k:I
    goto/16 :goto_1
.end method

.method private puttrailer()V
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->out:Ljava/io/PrintWriter;

    const-string v1, "EndFontMetrics\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 449
    return-void
.end method

.method private readString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 204
    .local v0, buf:Ljava/lang/StringBuffer;
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v1

    .line 205
    .local v1, c:I
    if-gtz v1, :cond_0

    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 207
    :cond_0
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private readString(I)Ljava/lang/String;
    .locals 5
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    new-array v0, p1, [B

    .line 192
    .local v0, b:[B
    iget-object v2, p0, Lcom/itextpdf/text/pdf/Pfm2afm;->in:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v2, v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readFully([B)V

    .line 194
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 195
    aget-byte v2, v0, v1

    if-nez v2, :cond_1

    .line 198
    :cond_0
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ISO-8859-1"

    invoke-direct {v2, v0, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v2

    .line 194
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
