.class public Lcom/itextpdf/text/pdf/CFFFont;
.super Ljava/lang/Object;
.source "CFFFont.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/CFFFont$Font;,
        Lcom/itextpdf/text/pdf/CFFFont$MarkerItem;,
        Lcom/itextpdf/text/pdf/CFFFont$DictNumberItem;,
        Lcom/itextpdf/text/pdf/CFFFont$StringItem;,
        Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;,
        Lcom/itextpdf/text/pdf/CFFFont$UInt16Item;,
        Lcom/itextpdf/text/pdf/CFFFont$UInt32Item;,
        Lcom/itextpdf/text/pdf/CFFFont$UInt24Item;,
        Lcom/itextpdf/text/pdf/CFFFont$DictOffsetItem;,
        Lcom/itextpdf/text/pdf/CFFFont$SubrMarkerItem;,
        Lcom/itextpdf/text/pdf/CFFFont$IndexMarkerItem;,
        Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;,
        Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;,
        Lcom/itextpdf/text/pdf/CFFFont$RangeItem;,
        Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;,
        Lcom/itextpdf/text/pdf/CFFFont$Item;
    }
.end annotation


# static fields
.field static final operatorNames:[Ljava/lang/String;

.field static final standardStrings:[Ljava/lang/String;


# instance fields
.field protected arg_count:I

.field protected args:[Ljava/lang/Object;

.field protected buf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

.field protected fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

.field protected gsubrIndexOffset:I

.field protected gsubrOffsets:[I

.field protected key:Ljava/lang/String;

.field protected nameIndexOffset:I

.field protected nameOffsets:[I

.field nextIndexOffset:I

.field private offSize:I

.field protected stringIndexOffset:I

.field protected stringOffsets:[I

.field protected topdictIndexOffset:I

.field protected topdictOffsets:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    const/16 v0, 0x47

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "version"

    aput-object v1, v0, v3

    const-string v1, "Notice"

    aput-object v1, v0, v4

    const-string v1, "FullName"

    aput-object v1, v0, v5

    const-string v1, "FamilyName"

    aput-object v1, v0, v6

    const-string v1, "Weight"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "FontBBox"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BlueValues"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "OtherBlues"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "FamilyBlues"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "FamilyOtherBlues"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "StdHW"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "StdVW"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "UNKNOWN_12"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "UniqueID"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "XUID"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "charset"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Encoding"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "CharStrings"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Private"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Subrs"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "defaultWidthX"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "nominalWidthX"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "UNKNOWN_22"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "UNKNOWN_23"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "UNKNOWN_24"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "UNKNOWN_25"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "UNKNOWN_26"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "UNKNOWN_27"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "UNKNOWN_28"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "UNKNOWN_29"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "UNKNOWN_30"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "UNKNOWN_31"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Copyright"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "isFixedPitch"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "ItalicAngle"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "UnderlinePosition"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "UnderlineThickness"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "PaintType"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "CharstringType"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "FontMatrix"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "StrokeWidth"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "BlueScale"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "BlueShift"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "BlueFuzz"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "StemSnapH"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "StemSnapV"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "ForceBold"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "UNKNOWN_12_15"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "UNKNOWN_12_16"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "LanguageGroup"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "ExpansionFactor"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "initialRandomSeed"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "SyntheticBase"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "PostScript"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "BaseFontName"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "BaseFontBlend"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "UNKNOWN_12_24"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "UNKNOWN_12_25"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "UNKNOWN_12_26"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "UNKNOWN_12_27"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "UNKNOWN_12_28"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "UNKNOWN_12_29"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "ROS"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "CIDFontVersion"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "CIDFontRevision"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "CIDFontType"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "CIDCount"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "UIDBase"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "FDArray"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "FDSelect"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "FontName"

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/CFFFont;->operatorNames:[Ljava/lang/String;

    .line 106
    const/16 v0, 0x187

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ".notdef"

    aput-object v1, v0, v3

    const-string v1, "space"

    aput-object v1, v0, v4

    const-string v1, "exclam"

    aput-object v1, v0, v5

    const-string v1, "quotedbl"

    aput-object v1, v0, v6

    const-string v1, "numbersign"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "dollar"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "percent"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ampersand"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "quoteright"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "parenleft"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "parenright"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "asterisk"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "plus"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "comma"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "hyphen"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "period"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "slash"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "zero"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "one"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "two"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "three"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "four"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "five"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "six"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "seven"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "eight"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "nine"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "colon"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "semicolon"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "less"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "equal"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "greater"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "question"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "at"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "A"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "B"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "C"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "D"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "E"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "bracketleft"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "backslash"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "bracketright"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "asciicircum"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "underscore"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "quoteleft"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "b"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "d"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "f"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "g"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "i"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "j"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "k"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "n"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "q"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "s"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "t"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "u"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "w"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "x"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "y"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "braceleft"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "bar"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "braceright"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "asciitilde"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "exclamdown"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "cent"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "sterling"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "fraction"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "yen"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "florin"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "section"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "currency"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "quotesingle"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "quotedblleft"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "guillemotleft"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "guilsinglleft"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "guilsinglright"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "fi"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "fl"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "endash"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "dagger"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "daggerdbl"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "periodcentered"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "paragraph"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "bullet"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "quotesinglbase"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "quotedblbase"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "quotedblright"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "guillemotright"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "ellipsis"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "perthousand"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "questiondown"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "grave"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "acute"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "circumflex"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "tilde"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "macron"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "breve"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "dotaccent"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "dieresis"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "ring"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "cedilla"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "hungarumlaut"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "ogonek"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "caron"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "emdash"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "AE"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "ordfeminine"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "Lslash"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "Oslash"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "OE"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "ordmasculine"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "ae"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "dotlessi"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "lslash"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "oslash"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "oe"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "germandbls"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "onesuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "logicalnot"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "mu"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, "trademark"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "Eth"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "onehalf"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "plusminus"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "Thorn"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "onequarter"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "divide"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "brokenbar"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "degree"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "thorn"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "threequarters"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "twosuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "registered"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "minus"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "eth"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "multiply"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "threesuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "copyright"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "Aacute"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "Acircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "Adieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "Agrave"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "Aring"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "Atilde"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "Ccedilla"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "Eacute"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "Ecircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "Edieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "Egrave"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "Iacute"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "Icircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "Idieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "Igrave"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "Ntilde"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "Oacute"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "Ocircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "Odieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "Ograve"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "Otilde"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "Scaron"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "Uacute"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "Ucircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "Udieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "Ugrave"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "Yacute"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "Ydieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "Zcaron"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "aacute"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "acircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "adieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "agrave"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "aring"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "atilde"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "ccedilla"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "eacute"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "ecircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "edieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "egrave"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "iacute"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "icircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "idieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "igrave"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "ntilde"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "oacute"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "ocircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "odieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "ograve"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "otilde"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "scaron"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "uacute"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "ucircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "udieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "ugrave"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "yacute"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "ydieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "zcaron"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "exclamsmall"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "Hungarumlautsmall"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "dollaroldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, "dollarsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "ampersandsmall"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "Acutesmall"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v2, "parenleftsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "parenrightsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v2, "twodotenleader"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "onedotenleader"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string v2, "zerooldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "oneoldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "twooldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "threeoldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "fouroldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "fiveoldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v2, "sixoldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string v2, "sevenoldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v2, "eightoldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string v2, "nineoldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v2, "commasuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string v2, "threequartersemdash"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string v2, "periodsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string v2, "questionsmall"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string v2, "asuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string v2, "bsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string v2, "centsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x100

    const-string v2, "dsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x101

    const-string v2, "esuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x102

    const-string v2, "isuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x103

    const-string v2, "lsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x104

    const-string v2, "msuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x105

    const-string v2, "nsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x106

    const-string v2, "osuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x107

    const-string v2, "rsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x108

    const-string v2, "ssuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x109

    const-string v2, "tsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    const-string v2, "ff"

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    const-string v2, "ffi"

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    const-string v2, "ffl"

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    const-string v2, "parenleftinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    const-string v2, "parenrightinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    const-string v2, "Circumflexsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x110

    const-string v2, "hyphensuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x111

    const-string v2, "Gravesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x112

    const-string v2, "Asmall"

    aput-object v2, v0, v1

    const/16 v1, 0x113

    const-string v2, "Bsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x114

    const-string v2, "Csmall"

    aput-object v2, v0, v1

    const/16 v1, 0x115

    const-string v2, "Dsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x116

    const-string v2, "Esmall"

    aput-object v2, v0, v1

    const/16 v1, 0x117

    const-string v2, "Fsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x118

    const-string v2, "Gsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x119

    const-string v2, "Hsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    const-string v2, "Ismall"

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    const-string v2, "Jsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    const-string v2, "Ksmall"

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    const-string v2, "Lsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    const-string v2, "Msmall"

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    const-string v2, "Nsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x120

    const-string v2, "Osmall"

    aput-object v2, v0, v1

    const/16 v1, 0x121

    const-string v2, "Psmall"

    aput-object v2, v0, v1

    const/16 v1, 0x122

    const-string v2, "Qsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x123

    const-string v2, "Rsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x124

    const-string v2, "Ssmall"

    aput-object v2, v0, v1

    const/16 v1, 0x125

    const-string v2, "Tsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x126

    const-string v2, "Usmall"

    aput-object v2, v0, v1

    const/16 v1, 0x127

    const-string v2, "Vsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x128

    const-string v2, "Wsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x129

    const-string v2, "Xsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    const-string v2, "Ysmall"

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    const-string v2, "Zsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    const-string v2, "colonmonetary"

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    const-string v2, "onefitted"

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    const-string v2, "rupiah"

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    const-string v2, "Tildesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x130

    const-string v2, "exclamdownsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x131

    const-string v2, "centoldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0x132

    const-string v2, "Lslashsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x133

    const-string v2, "Scaronsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x134

    const-string v2, "Zcaronsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x135

    const-string v2, "Dieresissmall"

    aput-object v2, v0, v1

    const/16 v1, 0x136

    const-string v2, "Brevesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x137

    const-string v2, "Caronsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x138

    const-string v2, "Dotaccentsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x139

    const-string v2, "Macronsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    const-string v2, "figuredash"

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    const-string v2, "hypheninferior"

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    const-string v2, "Ogoneksmall"

    aput-object v2, v0, v1

    const/16 v1, 0x13d

    const-string v2, "Ringsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    const-string v2, "Cedillasmall"

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    const-string v2, "questiondownsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x140

    const-string v2, "oneeighth"

    aput-object v2, v0, v1

    const/16 v1, 0x141

    const-string v2, "threeeighths"

    aput-object v2, v0, v1

    const/16 v1, 0x142

    const-string v2, "fiveeighths"

    aput-object v2, v0, v1

    const/16 v1, 0x143

    const-string v2, "seveneighths"

    aput-object v2, v0, v1

    const/16 v1, 0x144

    const-string v2, "onethird"

    aput-object v2, v0, v1

    const/16 v1, 0x145

    const-string v2, "twothirds"

    aput-object v2, v0, v1

    const/16 v1, 0x146

    const-string v2, "zerosuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x147

    const-string v2, "foursuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x148

    const-string v2, "fivesuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x149

    const-string v2, "sixsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x14a

    const-string v2, "sevensuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    const-string v2, "eightsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x14c

    const-string v2, "ninesuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x14d

    const-string v2, "zeroinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x14e

    const-string v2, "oneinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x14f

    const-string v2, "twoinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x150

    const-string v2, "threeinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x151

    const-string v2, "fourinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x152

    const-string v2, "fiveinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x153

    const-string v2, "sixinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x154

    const-string v2, "seveninferior"

    aput-object v2, v0, v1

    const/16 v1, 0x155

    const-string v2, "eightinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x156

    const-string v2, "nineinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x157

    const-string v2, "centinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x158

    const-string v2, "dollarinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x159

    const-string v2, "periodinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x15a

    const-string v2, "commainferior"

    aput-object v2, v0, v1

    const/16 v1, 0x15b

    const-string v2, "Agravesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x15c

    const-string v2, "Aacutesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x15d

    const-string v2, "Acircumflexsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x15e

    const-string v2, "Atildesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x15f

    const-string v2, "Adieresissmall"

    aput-object v2, v0, v1

    const/16 v1, 0x160

    const-string v2, "Aringsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x161

    const-string v2, "AEsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x162

    const-string v2, "Ccedillasmall"

    aput-object v2, v0, v1

    const/16 v1, 0x163

    const-string v2, "Egravesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x164

    const-string v2, "Eacutesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x165

    const-string v2, "Ecircumflexsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x166

    const-string v2, "Edieresissmall"

    aput-object v2, v0, v1

    const/16 v1, 0x167

    const-string v2, "Igravesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x168

    const-string v2, "Iacutesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x169

    const-string v2, "Icircumflexsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x16a

    const-string v2, "Idieresissmall"

    aput-object v2, v0, v1

    const/16 v1, 0x16b

    const-string v2, "Ethsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x16c

    const-string v2, "Ntildesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x16d

    const-string v2, "Ogravesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x16e

    const-string v2, "Oacutesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x16f

    const-string v2, "Ocircumflexsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x170

    const-string v2, "Otildesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x171

    const-string v2, "Odieresissmall"

    aput-object v2, v0, v1

    const/16 v1, 0x172

    const-string v2, "OEsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x173

    const-string v2, "Oslashsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x174

    const-string v2, "Ugravesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x175

    const-string v2, "Uacutesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x176

    const-string v2, "Ucircumflexsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x177

    const-string v2, "Udieresissmall"

    aput-object v2, v0, v1

    const/16 v1, 0x178

    const-string v2, "Yacutesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x179

    const-string v2, "Thornsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x17a

    const-string v2, "Ydieresissmall"

    aput-object v2, v0, v1

    const/16 v1, 0x17b

    const-string v2, "001.000"

    aput-object v2, v0, v1

    const/16 v1, 0x17c

    const-string v2, "001.001"

    aput-object v2, v0, v1

    const/16 v1, 0x17d

    const-string v2, "001.002"

    aput-object v2, v0, v1

    const/16 v1, 0x17e

    const-string v2, "001.003"

    aput-object v2, v0, v1

    const/16 v1, 0x17f

    const-string v2, "Black"

    aput-object v2, v0, v1

    const/16 v1, 0x180

    const-string v2, "Bold"

    aput-object v2, v0, v1

    const/16 v1, 0x181

    const-string v2, "Book"

    aput-object v2, v0, v1

    const/16 v1, 0x182

    const-string v2, "Light"

    aput-object v2, v0, v1

    const/16 v1, 0x183

    const-string v2, "Medium"

    aput-object v2, v0, v1

    const/16 v1, 0x184

    const-string v2, "Regular"

    aput-object v2, v0, v1

    const/16 v1, 0x185

    const-string v2, "Roman"

    aput-object v2, v0, v1

    const/16 v1, 0x186

    const-string v2, "Semibold"

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/text/pdf/CFFFont;->standardStrings:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)V
    .locals 12
    .parameter "inputbuffer"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    const/16 v7, 0x30

    new-array v7, v7, [Ljava/lang/Object;

    iput-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->args:[Ljava/lang/Object;

    .line 295
    iput v10, p0, Lcom/itextpdf/text/pdf/CFFFont;->arg_count:I

    .line 1054
    iput-object p1, p0, Lcom/itextpdf/text/pdf/CFFFont;->buf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    .line 1055
    invoke-virtual {p0, v10}, Lcom/itextpdf/text/pdf/CFFFont;->seek(I)V

    .line 1058
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFont;->getCard8()C

    move-result v4

    .line 1059
    .local v4, major:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFont;->getCard8()C

    move-result v5

    .line 1063
    .local v5, minor:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFont;->getCard8()C

    move-result v1

    .line 1065
    .local v1, hdrSize:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFont;->getCard8()C

    move-result v7

    iput v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->offSize:I

    .line 1071
    iput v1, p0, Lcom/itextpdf/text/pdf/CFFFont;->nameIndexOffset:I

    .line 1072
    iget v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->nameIndexOffset:I

    invoke-virtual {p0, v7}, Lcom/itextpdf/text/pdf/CFFFont;->getIndex(I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->nameOffsets:[I

    .line 1073
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->nameOffsets:[I

    iget-object v8, p0, Lcom/itextpdf/text/pdf/CFFFont;->nameOffsets:[I

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    aget v7, v7, v8

    iput v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->topdictIndexOffset:I

    .line 1074
    iget v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->topdictIndexOffset:I

    invoke-virtual {p0, v7}, Lcom/itextpdf/text/pdf/CFFFont;->getIndex(I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->topdictOffsets:[I

    .line 1075
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->topdictOffsets:[I

    iget-object v8, p0, Lcom/itextpdf/text/pdf/CFFFont;->topdictOffsets:[I

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    aget v7, v7, v8

    iput v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->stringIndexOffset:I

    .line 1076
    iget v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->stringIndexOffset:I

    invoke-virtual {p0, v7}, Lcom/itextpdf/text/pdf/CFFFont;->getIndex(I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->stringOffsets:[I

    .line 1077
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->stringOffsets:[I

    iget-object v8, p0, Lcom/itextpdf/text/pdf/CFFFont;->stringOffsets:[I

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    aget v7, v7, v8

    iput v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->gsubrIndexOffset:I

    .line 1078
    iget v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->gsubrIndexOffset:I

    invoke-virtual {p0, v7}, Lcom/itextpdf/text/pdf/CFFFont;->getIndex(I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->gsubrOffsets:[I

    .line 1080
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->nameOffsets:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    new-array v7, v7, [Lcom/itextpdf/text/pdf/CFFFont$Font;

    iput-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    .line 1094
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->nameOffsets:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_1

    .line 1095
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    new-instance v8, Lcom/itextpdf/text/pdf/CFFFont$Font;

    invoke-direct {v8, p0}, Lcom/itextpdf/text/pdf/CFFFont$Font;-><init>(Lcom/itextpdf/text/pdf/CFFFont;)V

    aput-object v8, v7, v2

    .line 1096
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->nameOffsets:[I

    aget v7, v7, v2

    invoke-virtual {p0, v7}, Lcom/itextpdf/text/pdf/CFFFont;->seek(I)V

    .line 1097
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v7, v7, v2

    const-string v8, ""

    iput-object v8, v7, Lcom/itextpdf/text/pdf/CFFFont$Font;->name:Ljava/lang/String;

    .line 1098
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->nameOffsets:[I

    aget v3, v7, v2

    .local v3, k:I
    :goto_1
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->nameOffsets:[I

    add-int/lit8 v8, v2, 0x1

    aget v7, v7, v8

    if-ge v3, v7, :cond_0

    .line 1099
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v8, v8, v2

    iget-object v9, v8, Lcom/itextpdf/text/pdf/CFFFont$Font;->name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFont;->getCard8()C

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Lcom/itextpdf/text/pdf/CFFFont$Font;->name:Ljava/lang/String;

    .line 1098
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1094
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1123
    .end local v3           #k:I
    :cond_1
    const/4 v2, 0x0

    :goto_2
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->topdictOffsets:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    if-ge v2, v7, :cond_10

    .line 1124
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->topdictOffsets:[I

    aget v7, v7, v2

    invoke-virtual {p0, v7}, Lcom/itextpdf/text/pdf/CFFFont;->seek(I)V

    .line 1125
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFont;->getPosition()I

    move-result v7

    iget-object v8, p0, Lcom/itextpdf/text/pdf/CFFFont;->topdictOffsets:[I

    add-int/lit8 v9, v2, 0x1

    aget v8, v8, v9

    if-ge v7, v8, :cond_a

    .line 1126
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFont;->getDictItem()V

    .line 1127
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->key:Ljava/lang/String;

    const-string v8, "FullName"

    if-ne v7, v8, :cond_3

    .line 1129
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v8, v7, v2

    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->args:[Ljava/lang/Object;

    aget-object v7, v7, v10

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-char v7, v7

    invoke-virtual {p0, v7}, Lcom/itextpdf/text/pdf/CFFFont;->getString(C)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Lcom/itextpdf/text/pdf/CFFFont$Font;->fullName:Ljava/lang/String;

    goto :goto_3

    .line 1131
    :cond_3
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->key:Ljava/lang/String;

    const-string v8, "ROS"

    if-ne v7, v8, :cond_4

    .line 1132
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v7, v7, v2

    iput-boolean v11, v7, Lcom/itextpdf/text/pdf/CFFFont$Font;->isCID:Z

    goto :goto_3

    .line 1133
    :cond_4
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->key:Ljava/lang/String;

    const-string v8, "Private"

    if-ne v7, v8, :cond_5

    .line 1134
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v8, v7, v2

    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->args:[Ljava/lang/Object;

    aget-object v7, v7, v10

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v8, Lcom/itextpdf/text/pdf/CFFFont$Font;->privateLength:I

    .line 1135
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v8, v7, v2

    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->args:[Ljava/lang/Object;

    aget-object v7, v7, v11

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v8, Lcom/itextpdf/text/pdf/CFFFont$Font;->privateOffset:I

    goto :goto_3

    .line 1137
    :cond_5
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->key:Ljava/lang/String;

    const-string v8, "charset"

    if-ne v7, v8, :cond_6

    .line 1138
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v8, v7, v2

    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->args:[Ljava/lang/Object;

    aget-object v7, v7, v10

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v8, Lcom/itextpdf/text/pdf/CFFFont$Font;->charsetOffset:I

    goto :goto_3

    .line 1148
    :cond_6
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->key:Ljava/lang/String;

    const-string v8, "CharStrings"

    if-ne v7, v8, :cond_7

    .line 1149
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v8, v7, v2

    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->args:[Ljava/lang/Object;

    aget-object v7, v7, v10

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v8, Lcom/itextpdf/text/pdf/CFFFont$Font;->charstringsOffset:I

    .line 1152
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFont;->getPosition()I

    move-result v6

    .line 1153
    .local v6, p:I
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v7, v7, v2

    iget-object v8, p0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v8, v8, v2

    iget v8, v8, Lcom/itextpdf/text/pdf/CFFFont$Font;->charstringsOffset:I

    invoke-virtual {p0, v8}, Lcom/itextpdf/text/pdf/CFFFont;->getIndex(I)[I

    move-result-object v8

    iput-object v8, v7, Lcom/itextpdf/text/pdf/CFFFont$Font;->charstringsOffsets:[I

    .line 1154
    invoke-virtual {p0, v6}, Lcom/itextpdf/text/pdf/CFFFont;->seek(I)V

    goto/16 :goto_3

    .line 1155
    .end local v6           #p:I
    :cond_7
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->key:Ljava/lang/String;

    const-string v8, "FDArray"

    if-ne v7, v8, :cond_8

    .line 1156
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v8, v7, v2

    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->args:[Ljava/lang/Object;

    aget-object v7, v7, v10

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v8, Lcom/itextpdf/text/pdf/CFFFont$Font;->fdarrayOffset:I

    goto/16 :goto_3

    .line 1157
    :cond_8
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->key:Ljava/lang/String;

    const-string v8, "FDSelect"

    if-ne v7, v8, :cond_9

    .line 1158
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v8, v7, v2

    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->args:[Ljava/lang/Object;

    aget-object v7, v7, v10

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v8, Lcom/itextpdf/text/pdf/CFFFont$Font;->fdselectOffset:I

    goto/16 :goto_3

    .line 1159
    :cond_9
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->key:Ljava/lang/String;

    const-string v8, "CharstringType"

    if-ne v7, v8, :cond_2

    .line 1160
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v8, v7, v2

    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->args:[Ljava/lang/Object;

    aget-object v7, v7, v10

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v8, Lcom/itextpdf/text/pdf/CFFFont$Font;->CharstringType:I

    goto/16 :goto_3

    .line 1164
    :cond_a
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v7, v7, v2

    iget v7, v7, Lcom/itextpdf/text/pdf/CFFFont$Font;->privateOffset:I

    if-ltz v7, :cond_c

    .line 1166
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v7, v7, v2

    iget v7, v7, Lcom/itextpdf/text/pdf/CFFFont$Font;->privateOffset:I

    invoke-virtual {p0, v7}, Lcom/itextpdf/text/pdf/CFFFont;->seek(I)V

    .line 1167
    :cond_b
    :goto_4
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFont;->getPosition()I

    move-result v7

    iget-object v8, p0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v8, v8, v2

    iget v8, v8, Lcom/itextpdf/text/pdf/CFFFont$Font;->privateOffset:I

    iget-object v9, p0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v9, v9, v2

    iget v9, v9, Lcom/itextpdf/text/pdf/CFFFont$Font;->privateLength:I

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_c

    .line 1168
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFont;->getDictItem()V

    .line 1169
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->key:Ljava/lang/String;

    const-string v8, "Subrs"

    if-ne v7, v8, :cond_b

    .line 1172
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v8, v7, v2

    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->args:[Ljava/lang/Object;

    aget-object v7, v7, v10

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v9, p0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v9, v9, v2

    iget v9, v9, Lcom/itextpdf/text/pdf/CFFFont$Font;->privateOffset:I

    add-int/2addr v7, v9

    iput v7, v8, Lcom/itextpdf/text/pdf/CFFFont$Font;->privateSubrs:I

    goto :goto_4

    .line 1177
    :cond_c
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v7, v7, v2

    iget v7, v7, Lcom/itextpdf/text/pdf/CFFFont$Font;->fdarrayOffset:I

    if-ltz v7, :cond_f

    .line 1178
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v7, v7, v2

    iget v7, v7, Lcom/itextpdf/text/pdf/CFFFont$Font;->fdarrayOffset:I

    invoke-virtual {p0, v7}, Lcom/itextpdf/text/pdf/CFFFont;->getIndex(I)[I

    move-result-object v0

    .line 1180
    .local v0, fdarrayOffsets:[I
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v7, v7, v2

    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    new-array v8, v8, [I

    iput-object v8, v7, Lcom/itextpdf/text/pdf/CFFFont$Font;->fdprivateOffsets:[I

    .line 1181
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v7, v7, v2

    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    new-array v8, v8, [I

    iput-object v8, v7, Lcom/itextpdf/text/pdf/CFFFont$Font;->fdprivateLengths:[I

    .line 1185
    const/4 v3, 0x0

    .restart local v3       #k:I
    :goto_5
    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_f

    .line 1186
    aget v7, v0, v3

    invoke-virtual {p0, v7}, Lcom/itextpdf/text/pdf/CFFFont;->seek(I)V

    .line 1187
    :cond_d
    :goto_6
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFont;->getPosition()I

    move-result v7

    add-int/lit8 v8, v3, 0x1

    aget v8, v0, v8

    if-ge v7, v8, :cond_e

    .line 1188
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFont;->getDictItem()V

    .line 1189
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->key:Ljava/lang/String;

    const-string v8, "Private"

    if-ne v7, v8, :cond_d

    .line 1190
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v7, v7, v2

    iget-object v8, v7, Lcom/itextpdf/text/pdf/CFFFont$Font;->fdprivateLengths:[I

    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->args:[Ljava/lang/Object;

    aget-object v7, v7, v10

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v8, v3

    .line 1191
    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v7, v7, v2

    iget-object v8, v7, Lcom/itextpdf/text/pdf/CFFFont$Font;->fdprivateOffsets:[I

    iget-object v7, p0, Lcom/itextpdf/text/pdf/CFFFont;->args:[Ljava/lang/Object;

    aget-object v7, v7, v11

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v8, v3

    goto :goto_6

    .line 1185
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1123
    .end local v0           #fdarrayOffsets:[I
    .end local v3           #k:I
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 1198
    :cond_10
    return-void
.end method


# virtual methods
.method ReadEncoding(I)V
    .locals 1
    .parameter "nextIndexOffset"

    .prologue
    .line 1204
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/CFFFont;->seek(I)V

    .line 1205
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFont;->getCard8()C

    move-result v0

    .line 1206
    .local v0, format:I
    return-void
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 2
    .parameter "fontName"

    .prologue
    .line 985
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 986
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/itextpdf/text/pdf/CFFFont$Font;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 987
    :goto_1
    return v1

    .line 985
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 987
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getCID(Ljava/lang/String;)[B
    .locals 42
    .parameter "fontName"

    .prologue
    .line 720
    const/16 v17, 0x0

    .local v17, j:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v38, v0

    move/from16 v0, v17

    move/from16 v1, v38

    if-ge v0, v1, :cond_0

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    move-object/from16 v38, v0

    aget-object v38, v38, v17

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->name:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_2

    .line 722
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v38, v0

    move/from16 v0, v17

    move/from16 v1, v38

    if-ne v0, v1, :cond_3

    const/4 v5, 0x0

    .line 972
    :cond_1
    return-object v5

    .line 720
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 724
    :cond_3
    new-instance v18, Ljava/util/LinkedList;

    invoke-direct/range {v18 .. v18}, Ljava/util/LinkedList;-><init>()V

    .line 728
    .local v18, l:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/itextpdf/text/pdf/CFFFont$Item;>;"
    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/CFFFont;->seek(I)V

    .line 730
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/CFFFont;->getCard8()C

    move-result v21

    .line 731
    .local v21, major:I
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/CFFFont;->getCard8()C

    move-result v22

    .line 732
    .local v22, minor:I
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/CFFFont;->getCard8()C

    move-result v14

    .line 733
    .local v14, hdrSize:I
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/CFFFont;->getCard8()C

    move-result v25

    .line 734
    .local v25, offSize:I
    move-object/from16 v0, p0

    iput v14, v0, Lcom/itextpdf/text/pdf/CFFFont;->nextIndexOffset:I

    .line 736
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->buf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-direct {v0, v1, v2, v14}, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 738
    const/16 v23, -0x1

    .local v23, nglyphs:I
    const/16 v24, -0x1

    .line 739
    .local v24, nstrings:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    move-object/from16 v38, v0

    aget-object v38, v38, v17

    move-object/from16 v0, v38

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->isCID:Z

    move/from16 v38, v0

    if-nez v38, :cond_4

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    move-object/from16 v38, v0

    aget-object v38, v38, v17

    move-object/from16 v0, v38

    iget v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->charstringsOffset:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/CFFFont;->seek(I)V

    .line 742
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/CFFFont;->getCard16()C

    move-result v23

    .line 743
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->stringIndexOffset:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/CFFFont;->seek(I)V

    .line 744
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/CFFFont;->getCard16()C

    move-result v38

    sget-object v39, Lcom/itextpdf/text/pdf/CFFFont;->standardStrings:[Ljava/lang/String;

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    add-int v24, v38, v39

    .line 750
    :cond_4
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$UInt16Item;

    const/16 v39, 0x1

    invoke-direct/range {v38 .. v39}, Lcom/itextpdf/text/pdf/CFFFont$UInt16Item;-><init>(C)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 751
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    const/16 v39, 0x1

    invoke-direct/range {v38 .. v39}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 752
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    const/16 v39, 0x1

    invoke-direct/range {v38 .. v39}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 753
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    move-object/from16 v39, v0

    aget-object v39, v39, v17

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->name:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v39

    add-int/lit8 v39, v39, 0x1

    move/from16 v0, v39

    int-to-char v0, v0

    move/from16 v39, v0

    invoke-direct/range {v38 .. v39}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 754
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$StringItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    move-object/from16 v39, v0

    aget-object v39, v39, v17

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->name:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-direct/range {v38 .. v39}, Lcom/itextpdf/text/pdf/CFFFont$StringItem;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 759
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$UInt16Item;

    const/16 v39, 0x1

    invoke-direct/range {v38 .. v39}, Lcom/itextpdf/text/pdf/CFFFont$UInt16Item;-><init>(C)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 760
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    const/16 v39, 0x2

    invoke-direct/range {v38 .. v39}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 761
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$UInt16Item;

    const/16 v39, 0x1

    invoke-direct/range {v38 .. v39}, Lcom/itextpdf/text/pdf/CFFFont$UInt16Item;-><init>(C)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 762
    new-instance v37, Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;

    const/16 v38, 0x2

    invoke-direct/range {v37 .. v38}, Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;-><init>(I)V

    .line 763
    .local v37, topdictIndex1Ref:Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;
    move-object/from16 v0, v18

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 764
    new-instance v36, Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;

    invoke-direct/range {v36 .. v36}, Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;-><init>()V

    .line 765
    .local v36, topdictBase:Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;
    move-object/from16 v0, v18

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 777
    new-instance v6, Lcom/itextpdf/text/pdf/CFFFont$DictOffsetItem;

    invoke-direct {v6}, Lcom/itextpdf/text/pdf/CFFFont$DictOffsetItem;-><init>()V

    .line 778
    .local v6, charsetRef:Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;
    new-instance v7, Lcom/itextpdf/text/pdf/CFFFont$DictOffsetItem;

    invoke-direct {v7}, Lcom/itextpdf/text/pdf/CFFFont$DictOffsetItem;-><init>()V

    .line 779
    .local v7, charstringsRef:Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;
    new-instance v12, Lcom/itextpdf/text/pdf/CFFFont$DictOffsetItem;

    invoke-direct {v12}, Lcom/itextpdf/text/pdf/CFFFont$DictOffsetItem;-><init>()V

    .line 780
    .local v12, fdarrayRef:Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;
    new-instance v13, Lcom/itextpdf/text/pdf/CFFFont$DictOffsetItem;

    invoke-direct {v13}, Lcom/itextpdf/text/pdf/CFFFont$DictOffsetItem;-><init>()V

    .line 782
    .local v13, fdselectRef:Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    move-object/from16 v38, v0

    aget-object v38, v38, v17

    move-object/from16 v0, v38

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->isCID:Z

    move/from16 v38, v0

    if-nez v38, :cond_5

    .line 784
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$DictNumberItem;

    move-object/from16 v0, v38

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/CFFFont$DictNumberItem;-><init>(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 785
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$DictNumberItem;

    add-int/lit8 v39, v24, 0x1

    invoke-direct/range {v38 .. v39}, Lcom/itextpdf/text/pdf/CFFFont$DictNumberItem;-><init>(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 786
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$DictNumberItem;

    const/16 v39, 0x0

    invoke-direct/range {v38 .. v39}, Lcom/itextpdf/text/pdf/CFFFont$DictNumberItem;-><init>(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 787
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    const/16 v39, 0xc

    invoke-direct/range {v38 .. v39}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 788
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    const/16 v39, 0x1e

    invoke-direct/range {v38 .. v39}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 790
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$DictNumberItem;

    move-object/from16 v0, v38

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/CFFFont$DictNumberItem;-><init>(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 791
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    const/16 v39, 0xc

    invoke-direct/range {v38 .. v39}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 792
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    const/16 v39, 0x22

    invoke-direct/range {v38 .. v39}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 798
    :cond_5
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 799
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    const/16 v39, 0xc

    invoke-direct/range {v38 .. v39}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 800
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    const/16 v39, 0x24

    invoke-direct/range {v38 .. v39}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 802
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 803
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    const/16 v39, 0xc

    invoke-direct/range {v38 .. v39}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 804
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    const/16 v39, 0x25

    invoke-direct/range {v38 .. v39}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 806
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 807
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    const/16 v39, 0xf

    invoke-direct/range {v38 .. v39}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 809
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 810
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    const/16 v39, 0x11

    invoke-direct/range {v38 .. v39}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->topdictOffsets:[I

    move-object/from16 v38, v0

    aget v38, v38, v17

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/CFFFont;->seek(I)V

    .line 813
    :cond_6
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/CFFFont;->getPosition()I

    move-result v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->topdictOffsets:[I

    move-object/from16 v39, v0

    add-int/lit8 v40, v17, 0x1

    aget v39, v39, v40

    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_7

    .line 814
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/CFFFont;->getPosition()I

    move-result v27

    .line 815
    .local v27, p1:I
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/CFFFont;->getDictItem()V

    .line 816
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/text/pdf/CFFFont;->getPosition()I

    move-result v28

    .line 817
    .local v28, p2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->key:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "Encoding"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->key:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "Private"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->key:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "FDSelect"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->key:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "FDArray"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->key:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "charset"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->key:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "CharStrings"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    if-eq v0, v1, :cond_6

    .line 826
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->buf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-object/from16 v39, v0

    sub-int v40, v28, v27

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move/from16 v2, v27

    move/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 830
    .end local v27           #p1:I
    .end local v28           #p2:I
    :cond_7
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$IndexMarkerItem;

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/CFFFont$IndexMarkerItem;-><init>(Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    move-object/from16 v38, v0

    aget-object v38, v38, v17

    move-object/from16 v0, v38

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->isCID:Z

    move/from16 v38, v0

    if-eqz v38, :cond_9

    .line 837
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->stringIndexOffset:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/CFFFont;->getEntireIndexRange(I)Lcom/itextpdf/text/pdf/CFFFont$RangeItem;

    move-result-object v38

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 875
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->gsubrIndexOffset:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/CFFFont;->getEntireIndexRange(I)Lcom/itextpdf/text/pdf/CFFFont$RangeItem;

    move-result-object v38

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    move-object/from16 v38, v0

    aget-object v38, v38, v17

    move-object/from16 v0, v38

    iget-boolean v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->isCID:Z

    move/from16 v38, v0

    if-eqz v38, :cond_f

    .line 943
    :cond_8
    :goto_3
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$MarkerItem;

    move-object/from16 v0, v38

    invoke-direct {v0, v7}, Lcom/itextpdf/text/pdf/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    move-object/from16 v38, v0

    aget-object v38, v38, v17

    move-object/from16 v0, v38

    iget v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->charstringsOffset:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/CFFFont;->getEntireIndexRange(I)Lcom/itextpdf/text/pdf/CFFFont$RangeItem;

    move-result-object v38

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 948
    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v8, v0, [I

    .line 949
    .local v8, currentOffset:[I
    const/16 v38, 0x0

    const/16 v39, 0x0

    aput v39, v8, v38

    .line 951
    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 952
    .local v20, listIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/CFFFont$Item;>;"
    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_10

    .line 953
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/itextpdf/text/pdf/CFFFont$Item;

    .line 954
    .local v16, item:Lcom/itextpdf/text/pdf/CFFFont$Item;
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/itextpdf/text/pdf/CFFFont$Item;->increment([I)V

    goto :goto_4

    .line 839
    .end local v8           #currentOffset:[I
    .end local v16           #item:Lcom/itextpdf/text/pdf/CFFFont$Item;
    .end local v20           #listIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/CFFFont$Item;>;"
    :cond_9
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    move-object/from16 v39, v0

    aget-object v39, v39, v17

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->name:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "-OneRange"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 840
    .local v11, fdFontName:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v38

    const/16 v39, 0x7f

    move/from16 v0, v38

    move/from16 v1, v39

    if-le v0, v1, :cond_a

    .line 841
    const/16 v38, 0x0

    const/16 v39, 0x7f

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 842
    :cond_a
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "AdobeIdentity"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 844
    .local v10, extraStrings:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->stringOffsets:[I

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->stringOffsets:[I

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    add-int/lit8 v39, v39, -0x1

    aget v38, v38, v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->stringOffsets:[I

    move-object/from16 v39, v0

    const/16 v40, 0x0

    aget v39, v39, v40

    sub-int v26, v38, v39

    .line 846
    .local v26, origStringsLen:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->stringOffsets:[I

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aget v38, v38, v39

    add-int/lit8 v34, v38, -0x1

    .line 849
    .local v34, stringsBaseOffset:I
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v38

    add-int v38, v38, v26

    const/16 v39, 0xff

    move/from16 v0, v38

    move/from16 v1, v39

    if-gt v0, v1, :cond_b

    const/16 v35, 0x1

    .line 854
    .local v35, stringsIndexOffSize:B
    :goto_5
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$UInt16Item;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->stringOffsets:[I

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    add-int/lit8 v39, v39, -0x1

    add-int/lit8 v39, v39, 0x3

    move/from16 v0, v39

    int-to-char v0, v0

    move/from16 v39, v0

    invoke-direct/range {v38 .. v39}, Lcom/itextpdf/text/pdf/CFFFont$UInt16Item;-><init>(C)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 855
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    move/from16 v0, v35

    int-to-char v0, v0

    move/from16 v39, v0

    invoke-direct/range {v38 .. v39}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 856
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/itextpdf/text/pdf/CFFFont;->stringOffsets:[I

    .local v4, arr$:[I
    array-length v0, v4

    move/from16 v19, v0

    .local v19, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_6
    move/from16 v0, v19

    if-ge v15, v0, :cond_e

    aget v33, v4, v15

    .line 857
    .local v33, stringOffset:I
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;

    sub-int v39, v33, v34

    move-object/from16 v0, v38

    move/from16 v1, v35

    move/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;-><init>(II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 856
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 850
    .end local v4           #arr$:[I
    .end local v15           #i$:I
    .end local v19           #len$:I
    .end local v33           #stringOffset:I
    .end local v35           #stringsIndexOffSize:B
    :cond_b
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v38

    add-int v38, v38, v26

    const v39, 0xffff

    move/from16 v0, v38

    move/from16 v1, v39

    if-gt v0, v1, :cond_c

    const/16 v35, 0x2

    .restart local v35       #stringsIndexOffSize:B
    goto :goto_5

    .line 851
    .end local v35           #stringsIndexOffSize:B
    :cond_c
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v38

    add-int v38, v38, v26

    const v39, 0xffffff

    move/from16 v0, v38

    move/from16 v1, v39

    if-gt v0, v1, :cond_d

    const/16 v35, 0x3

    .restart local v35       #stringsIndexOffSize:B
    goto :goto_5

    .line 852
    .end local v35           #stringsIndexOffSize:B
    :cond_d
    const/16 v35, 0x4

    .restart local v35       #stringsIndexOffSize:B
    goto :goto_5

    .line 859
    .restart local v4       #arr$:[I
    .restart local v15       #i$:I
    .restart local v19       #len$:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->stringOffsets:[I

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->stringOffsets:[I

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v39, v0

    add-int/lit8 v39, v39, -0x1

    aget v38, v38, v39

    sub-int v9, v38, v34

    .line 862
    .local v9, currentStringsOffset:I
    const-string v38, "Adobe"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v38

    add-int v9, v9, v38

    .line 863
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;

    move-object/from16 v0, v38

    move/from16 v1, v35

    invoke-direct {v0, v1, v9}, Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;-><init>(II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 864
    const-string v38, "Identity"

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v38

    add-int v9, v9, v38

    .line 865
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;

    move-object/from16 v0, v38

    move/from16 v1, v35

    invoke-direct {v0, v1, v9}, Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;-><init>(II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 866
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v38

    add-int v9, v9, v38

    .line 867
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;

    move-object/from16 v0, v38

    move/from16 v1, v35

    invoke-direct {v0, v1, v9}, Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;-><init>(II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 869
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->buf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->stringOffsets:[I

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aget v40, v40, v41

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 870
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$StringItem;

    move-object/from16 v0, v38

    invoke-direct {v0, v10}, Lcom/itextpdf/text/pdf/CFFFont$StringItem;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 883
    .end local v4           #arr$:[I
    .end local v9           #currentStringsOffset:I
    .end local v10           #extraStrings:Ljava/lang/String;
    .end local v11           #fdFontName:Ljava/lang/String;
    .end local v15           #i$:I
    .end local v19           #len$:I
    .end local v26           #origStringsLen:I
    .end local v34           #stringsBaseOffset:I
    .end local v35           #stringsIndexOffSize:B
    :cond_f
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$MarkerItem;

    move-object/from16 v0, v38

    invoke-direct {v0, v13}, Lcom/itextpdf/text/pdf/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 884
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    const/16 v39, 0x3

    invoke-direct/range {v38 .. v39}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 885
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$UInt16Item;

    const/16 v39, 0x1

    invoke-direct/range {v38 .. v39}, Lcom/itextpdf/text/pdf/CFFFont$UInt16Item;-><init>(C)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 887
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$UInt16Item;

    const/16 v39, 0x0

    invoke-direct/range {v38 .. v39}, Lcom/itextpdf/text/pdf/CFFFont$UInt16Item;-><init>(C)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 888
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    const/16 v39, 0x0

    invoke-direct/range {v38 .. v39}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 890
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$UInt16Item;

    move/from16 v0, v23

    int-to-char v0, v0

    move/from16 v39, v0

    invoke-direct/range {v38 .. v39}, Lcom/itextpdf/text/pdf/CFFFont$UInt16Item;-><init>(C)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 895
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$MarkerItem;

    move-object/from16 v0, v38

    invoke-direct {v0, v6}, Lcom/itextpdf/text/pdf/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 896
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    const/16 v39, 0x2

    invoke-direct/range {v38 .. v39}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 898
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$UInt16Item;

    const/16 v39, 0x1

    invoke-direct/range {v38 .. v39}, Lcom/itextpdf/text/pdf/CFFFont$UInt16Item;-><init>(C)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 899
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$UInt16Item;

    add-int/lit8 v39, v23, -0x1

    move/from16 v0, v39

    int-to-char v0, v0

    move/from16 v39, v0

    invoke-direct/range {v38 .. v39}, Lcom/itextpdf/text/pdf/CFFFont$UInt16Item;-><init>(C)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 904
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$MarkerItem;

    move-object/from16 v0, v38

    invoke-direct {v0, v12}, Lcom/itextpdf/text/pdf/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 905
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$UInt16Item;

    const/16 v39, 0x1

    invoke-direct/range {v38 .. v39}, Lcom/itextpdf/text/pdf/CFFFont$UInt16Item;-><init>(C)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 906
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    const/16 v39, 0x1

    invoke-direct/range {v38 .. v39}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 907
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    const/16 v39, 0x1

    invoke-direct/range {v38 .. v39}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 909
    new-instance v30, Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;

    const/16 v38, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/CFFFont$IndexOffsetItem;-><init>(I)V

    .line 910
    .local v30, privateIndex1Ref:Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;
    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 911
    new-instance v29, Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;

    invoke-direct/range {v29 .. v29}, Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;-><init>()V

    .line 912
    .local v29, privateBase:Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;
    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 921
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$DictNumberItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    move-object/from16 v39, v0

    aget-object v39, v39, v17

    move-object/from16 v0, v39

    iget v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->privateLength:I

    move/from16 v39, v0

    invoke-direct/range {v38 .. v39}, Lcom/itextpdf/text/pdf/CFFFont$DictNumberItem;-><init>(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 922
    new-instance v31, Lcom/itextpdf/text/pdf/CFFFont$DictOffsetItem;

    invoke-direct/range {v31 .. v31}, Lcom/itextpdf/text/pdf/CFFFont$DictOffsetItem;-><init>()V

    .line 923
    .local v31, privateRef:Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;
    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 924
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;

    const/16 v39, 0x12

    invoke-direct/range {v38 .. v39}, Lcom/itextpdf/text/pdf/CFFFont$UInt8Item;-><init>(C)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 926
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$IndexMarkerItem;

    move-object/from16 v0, v38

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/CFFFont$IndexMarkerItem;-><init>(Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 930
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$MarkerItem;

    move-object/from16 v0, v38

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 934
    new-instance v38, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->buf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    move-object/from16 v40, v0

    aget-object v40, v40, v17

    move-object/from16 v0, v40

    iget v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->privateOffset:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    move-object/from16 v41, v0

    aget-object v41, v41, v17

    move-object/from16 v0, v41

    iget v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->privateLength:I

    move/from16 v41, v0

    invoke-direct/range {v38 .. v41}, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    move-object/from16 v38, v0

    aget-object v38, v38, v17

    move-object/from16 v0, v38

    iget v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->privateSubrs:I

    move/from16 v38, v0

    if-ltz v38, :cond_8

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    move-object/from16 v38, v0

    aget-object v38, v38, v17

    move-object/from16 v0, v38

    iget v0, v0, Lcom/itextpdf/text/pdf/CFFFont$Font;->privateSubrs:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/CFFFont;->getEntireIndexRange(I)Lcom/itextpdf/text/pdf/CFFFont$RangeItem;

    move-result-object v38

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 957
    .end local v29           #privateBase:Lcom/itextpdf/text/pdf/CFFFont$IndexBaseItem;
    .end local v30           #privateIndex1Ref:Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;
    .end local v31           #privateRef:Lcom/itextpdf/text/pdf/CFFFont$OffsetItem;
    .restart local v8       #currentOffset:[I
    .restart local v20       #listIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/itextpdf/text/pdf/CFFFont$Item;>;"
    :cond_10
    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 958
    :goto_7
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_11

    .line 959
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/itextpdf/text/pdf/CFFFont$Item;

    .line 960
    .restart local v16       #item:Lcom/itextpdf/text/pdf/CFFFont$Item;
    invoke-virtual/range {v16 .. v16}, Lcom/itextpdf/text/pdf/CFFFont$Item;->xref()V

    goto :goto_7

    .line 963
    .end local v16           #item:Lcom/itextpdf/text/pdf/CFFFont$Item;
    :cond_11
    const/16 v38, 0x0

    aget v32, v8, v38

    .line 964
    .local v32, size:I
    move/from16 v0, v32

    new-array v5, v0, [B

    .line 966
    .local v5, b:[B
    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 967
    :goto_8
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_1

    .line 968
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/itextpdf/text/pdf/CFFFont$Item;

    .line 969
    .restart local v16       #item:Lcom/itextpdf/text/pdf/CFFFont$Item;
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/CFFFont$Item;->emit([B)V

    goto :goto_8
.end method

.method getCard16()C
    .locals 2

    .prologue
    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFont;->buf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readChar()C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method getCard8()C
    .locals 3

    .prologue
    .line 196
    :try_start_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/CFFFont;->buf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readByte()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 197
    .local v1, i:B
    and-int/lit16 v2, v1, 0xff

    int-to-char v2, v2

    return v2

    .line 199
    .end local v1           #i:B
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v2, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method protected getDictItem()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 298
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget v9, p0, Lcom/itextpdf/text/pdf/CFFFont;->arg_count:I

    if-ge v6, v9, :cond_0

    iget-object v9, p0, Lcom/itextpdf/text/pdf/CFFFont;->args:[Ljava/lang/Object;

    aput-object v10, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 299
    :cond_0
    const/4 v9, 0x0

    iput v9, p0, Lcom/itextpdf/text/pdf/CFFFont;->arg_count:I

    .line 300
    iput-object v10, p0, Lcom/itextpdf/text/pdf/CFFFont;->key:Ljava/lang/String;

    .line 301
    const/4 v5, 0x0

    .line 303
    .local v5, gotKey:Z
    :cond_1
    :goto_1
    if-nez v5, :cond_e

    .line 304
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFont;->getCard8()C

    move-result v1

    .line 305
    .local v1, b0:C
    const/16 v9, 0x1d

    if-ne v1, v9, :cond_2

    .line 306
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFont;->getInt()I

    move-result v7

    .line 307
    .local v7, item:I
    iget-object v9, p0, Lcom/itextpdf/text/pdf/CFFFont;->args:[Ljava/lang/Object;

    iget v10, p0, Lcom/itextpdf/text/pdf/CFFFont;->arg_count:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 308
    iget v9, p0, Lcom/itextpdf/text/pdf/CFFFont;->arg_count:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/itextpdf/text/pdf/CFFFont;->arg_count:I

    goto :goto_1

    .line 312
    .end local v7           #item:I
    :cond_2
    const/16 v9, 0x1c

    if-ne v1, v9, :cond_3

    .line 313
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFont;->getShort()S

    move-result v7

    .line 314
    .local v7, item:S
    iget-object v9, p0, Lcom/itextpdf/text/pdf/CFFFont;->args:[Ljava/lang/Object;

    iget v10, p0, Lcom/itextpdf/text/pdf/CFFFont;->arg_count:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 315
    iget v9, p0, Lcom/itextpdf/text/pdf/CFFFont;->arg_count:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/itextpdf/text/pdf/CFFFont;->arg_count:I

    goto :goto_1

    .line 319
    .end local v7           #item:S
    :cond_3
    const/16 v9, 0x20

    if-lt v1, v9, :cond_4

    const/16 v9, 0xf6

    if-gt v1, v9, :cond_4

    .line 320
    add-int/lit16 v9, v1, -0x8b

    int-to-byte v7, v9

    .line 321
    .local v7, item:B
    iget-object v9, p0, Lcom/itextpdf/text/pdf/CFFFont;->args:[Ljava/lang/Object;

    iget v10, p0, Lcom/itextpdf/text/pdf/CFFFont;->arg_count:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 322
    iget v9, p0, Lcom/itextpdf/text/pdf/CFFFont;->arg_count:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/itextpdf/text/pdf/CFFFont;->arg_count:I

    goto :goto_1

    .line 326
    .end local v7           #item:B
    :cond_4
    const/16 v9, 0xf7

    if-lt v1, v9, :cond_5

    const/16 v9, 0xfa

    if-gt v1, v9, :cond_5

    .line 327
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFont;->getCard8()C

    move-result v2

    .line 328
    .local v2, b1:C
    add-int/lit16 v9, v1, -0xf7

    mul-int/lit16 v9, v9, 0x100

    add-int/2addr v9, v2

    add-int/lit8 v9, v9, 0x6c

    int-to-short v7, v9

    .line 329
    .local v7, item:S
    iget-object v9, p0, Lcom/itextpdf/text/pdf/CFFFont;->args:[Ljava/lang/Object;

    iget v10, p0, Lcom/itextpdf/text/pdf/CFFFont;->arg_count:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 330
    iget v9, p0, Lcom/itextpdf/text/pdf/CFFFont;->arg_count:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/itextpdf/text/pdf/CFFFont;->arg_count:I

    goto :goto_1

    .line 334
    .end local v2           #b1:C
    .end local v7           #item:S
    :cond_5
    const/16 v9, 0xfb

    if-lt v1, v9, :cond_6

    const/16 v9, 0xfe

    if-gt v1, v9, :cond_6

    .line 335
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFont;->getCard8()C

    move-result v2

    .line 336
    .restart local v2       #b1:C
    add-int/lit16 v9, v1, -0xfb

    neg-int v9, v9

    mul-int/lit16 v9, v9, 0x100

    sub-int/2addr v9, v2

    add-int/lit8 v9, v9, -0x6c

    int-to-short v7, v9

    .line 337
    .restart local v7       #item:S
    iget-object v9, p0, Lcom/itextpdf/text/pdf/CFFFont;->args:[Ljava/lang/Object;

    iget v10, p0, Lcom/itextpdf/text/pdf/CFFFont;->arg_count:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 338
    iget v9, p0, Lcom/itextpdf/text/pdf/CFFFont;->arg_count:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/itextpdf/text/pdf/CFFFont;->arg_count:I

    goto/16 :goto_1

    .line 342
    .end local v2           #b1:C
    .end local v7           #item:S
    :cond_6
    const/16 v9, 0x1e

    if-ne v1, v9, :cond_c

    .line 343
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 344
    .local v7, item:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 345
    .local v4, done:Z
    const/4 v3, 0x0

    .line 346
    .local v3, buffer:C
    const/4 v0, 0x0

    .line 347
    .local v0, avail:B
    const/4 v8, 0x0

    .line 348
    .local v8, nibble:I
    :goto_2
    if-nez v4, :cond_b

    .line 350
    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFont;->getCard8()C

    move-result v3

    const/4 v0, 0x2

    .line 351
    :cond_7
    const/4 v9, 0x1

    if-ne v0, v9, :cond_8

    div-int/lit8 v8, v3, 0x10

    add-int/lit8 v9, v0, -0x1

    int-to-byte v0, v9

    .line 352
    :cond_8
    const/4 v9, 0x2

    if-ne v0, v9, :cond_9

    rem-int/lit8 v8, v3, 0x10

    add-int/lit8 v9, v0, -0x1

    int-to-byte v0, v9

    .line 353
    :cond_9
    packed-switch v8, :pswitch_data_0

    .line 360
    :pswitch_0
    if-ltz v8, :cond_a

    const/16 v9, 0x9

    if-gt v8, v9, :cond_a

    .line 361
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 354
    :pswitch_1
    const-string v9, "."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 355
    :pswitch_2
    const-string v9, "E"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 356
    :pswitch_3
    const-string v9, "E-"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 357
    :pswitch_4
    const-string v9, "-"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 358
    :pswitch_5
    const/4 v4, 0x1

    goto :goto_2

    .line 363
    :cond_a
    const-string v9, "<NIBBLE ERROR: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x3e

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 364
    const/4 v4, 0x1

    .line 366
    goto :goto_2

    .line 369
    :cond_b
    iget-object v9, p0, Lcom/itextpdf/text/pdf/CFFFont;->args:[Ljava/lang/Object;

    iget v10, p0, Lcom/itextpdf/text/pdf/CFFFont;->arg_count:I

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 370
    iget v9, p0, Lcom/itextpdf/text/pdf/CFFFont;->arg_count:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/itextpdf/text/pdf/CFFFont;->arg_count:I

    goto/16 :goto_1

    .line 374
    .end local v0           #avail:B
    .end local v3           #buffer:C
    .end local v4           #done:Z
    .end local v7           #item:Ljava/lang/StringBuilder;
    .end local v8           #nibble:I
    :cond_c
    const/16 v9, 0x15

    if-gt v1, v9, :cond_1

    .line 375
    const/4 v5, 0x1

    .line 376
    const/16 v9, 0xc

    if-eq v1, v9, :cond_d

    sget-object v9, Lcom/itextpdf/text/pdf/CFFFont;->operatorNames:[Ljava/lang/String;

    aget-object v9, v9, v1

    iput-object v9, p0, Lcom/itextpdf/text/pdf/CFFFont;->key:Ljava/lang/String;

    goto/16 :goto_1

    .line 377
    :cond_d
    sget-object v9, Lcom/itextpdf/text/pdf/CFFFont;->operatorNames:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFont;->getCard8()C

    move-result v10

    add-int/lit8 v10, v10, 0x20

    aget-object v9, v9, v10

    iput-object v9, p0, Lcom/itextpdf/text/pdf/CFFFont;->key:Ljava/lang/String;

    goto/16 :goto_1

    .line 384
    .end local v1           #b0:C
    :cond_e
    return-void

    .line 353
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected getEntireIndexRange(I)Lcom/itextpdf/text/pdf/CFFFont$RangeItem;
    .locals 6
    .parameter "indexOffset"

    .prologue
    .line 691
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/CFFFont;->seek(I)V

    .line 692
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFont;->getCard16()C

    move-result v0

    .line 693
    .local v0, count:I
    if-nez v0, :cond_0

    .line 694
    new-instance v3, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/CFFFont;->buf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const/4 v5, 0x2

    invoke-direct {v3, v4, p1, v5}, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;II)V

    .line 699
    :goto_0
    return-object v3

    .line 696
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFont;->getCard8()C

    move-result v1

    .line 697
    .local v1, indexOffSize:I
    add-int/lit8 v3, p1, 0x2

    add-int/lit8 v3, v3, 0x1

    mul-int v4, v0, v1

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/CFFFont;->seek(I)V

    .line 698
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/CFFFont;->getOffset(I)I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 699
    .local v2, size:I
    new-instance v3, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;

    iget-object v4, p0, Lcom/itextpdf/text/pdf/CFFFont;->buf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    add-int/lit8 v5, v0, 0x1

    mul-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x3

    add-int/2addr v5, v2

    invoke-direct {v3, v4, p1, v5}, Lcom/itextpdf/text/pdf/CFFFont$RangeItem;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;II)V

    goto :goto_0
.end method

.method getIndex(I)[I
    .locals 6
    .parameter "nextIndexOffset"

    .prologue
    .line 265
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/CFFFont;->seek(I)V

    .line 266
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFont;->getCard16()C

    move-result v0

    .line 267
    .local v0, count:I
    add-int/lit8 v4, v0, 0x1

    new-array v3, v4, [I

    .line 269
    .local v3, offsets:[I
    if-nez v0, :cond_1

    .line 270
    const/4 v4, 0x0

    const/4 v5, -0x1

    aput v5, v3, v4

    .line 271
    add-int/lit8 p1, p1, 0x2

    .line 290
    :cond_0
    return-object v3

    .line 275
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFont;->getCard8()C

    move-result v1

    .line 277
    .local v1, indexOffSize:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-gt v2, v0, :cond_0

    .line 279
    add-int/lit8 v4, p1, 0x2

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v0, 0x1

    mul-int/2addr v5, v1

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/CFFFont;->getOffset(I)I

    move-result v5

    add-int/2addr v4, v5

    aput v4, v3, v2

    .line 277
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method getInt()I
    .locals 2

    .prologue
    .line 242
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFont;->buf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 992
    iget-object v2, p0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/String;

    .line 993
    .local v1, names:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 994
    iget-object v2, p0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/itextpdf/text/pdf/CFFFont$Font;->name:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 993
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 995
    :cond_0
    return-object v1
.end method

.method getOffset(I)I
    .locals 3
    .parameter "offSize"

    .prologue
    .line 214
    const/4 v1, 0x0

    .line 215
    .local v1, offset:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 216
    mul-int/lit16 v1, v1, 0x100

    .line 217
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFont;->getCard8()C

    move-result v2

    add-int/2addr v1, v2

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_0
    return v1
.end method

.method getPosition()I
    .locals 3

    .prologue
    .line 251
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFont;->buf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->getFilePointer()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    long-to-int v1, v1

    return v1

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method getShort()S
    .locals 2

    .prologue
    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFont;->buf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readShort()S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getString(C)Ljava/lang/String;
    .locals 6
    .parameter "sid"

    .prologue
    .line 180
    sget-object v4, Lcom/itextpdf/text/pdf/CFFFont;->standardStrings:[Ljava/lang/String;

    array-length v4, v4

    if-ge p1, v4, :cond_0

    sget-object v4, Lcom/itextpdf/text/pdf/CFFFont;->standardStrings:[Ljava/lang/String;

    aget-object v4, v4, p1

    .line 191
    :goto_0
    return-object v4

    .line 181
    :cond_0
    sget-object v4, Lcom/itextpdf/text/pdf/CFFFont;->standardStrings:[Ljava/lang/String;

    array-length v4, v4

    iget-object v5, p0, Lcom/itextpdf/text/pdf/CFFFont;->stringOffsets:[I

    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    if-lt p1, v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    .line 182
    :cond_1
    sget-object v4, Lcom/itextpdf/text/pdf/CFFFont;->standardStrings:[Ljava/lang/String;

    array-length v4, v4

    sub-int v0, p1, v4

    .line 184
    .local v0, j:I
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFont;->getPosition()I

    move-result v2

    .line 185
    .local v2, p:I
    iget-object v4, p0, Lcom/itextpdf/text/pdf/CFFFont;->stringOffsets:[I

    aget v4, v4, v0

    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/CFFFont;->seek(I)V

    .line 186
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 187
    .local v3, s:Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/itextpdf/text/pdf/CFFFont;->stringOffsets:[I

    aget v1, v4, v0

    .local v1, k:I
    :goto_1
    iget-object v4, p0, Lcom/itextpdf/text/pdf/CFFFont;->stringOffsets:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    if-ge v1, v4, :cond_2

    .line 188
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/CFFFont;->getCard8()C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 190
    :cond_2
    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/CFFFont;->seek(I)V

    .line 191
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public isCID(Ljava/lang/String;)Z
    .locals 2
    .parameter "fontName"

    .prologue
    .line 978
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 979
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/itextpdf/text/pdf/CFFFont$Font;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFont;->fonts:[Lcom/itextpdf/text/pdf/CFFFont$Font;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/itextpdf/text/pdf/CFFFont$Font;->isCID:Z

    .line 980
    :goto_1
    return v1

    .line 978
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 980
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method seek(I)V
    .locals 4
    .parameter "offset"

    .prologue
    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/text/pdf/CFFFont;->buf:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
