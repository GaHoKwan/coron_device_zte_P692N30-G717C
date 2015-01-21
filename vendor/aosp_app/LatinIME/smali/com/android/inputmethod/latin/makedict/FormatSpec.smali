.class public final Lcom/android/inputmethod/latin/makedict/FormatSpec;
.super Ljava/lang/Object;
.source "FormatSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/makedict/FormatSpec$FileHeader;,
        Lcom/android/inputmethod/latin/makedict/FormatSpec$FormatOptions;
    }
.end annotation


# static fields
.field static final CONTAINS_BIGRAMS_FLAG:I = 0x8

.field static final FIRST_VERSION_WITH_DYNAMIC_UPDATE:I = 0x3

.field static final FIRST_VERSION_WITH_HEADER_SIZE:I = 0x2

.field static final FLAG_ATTRIBUTE_ADDRESS_TYPE_ONEBYTE:I = 0x10

.field static final FLAG_ATTRIBUTE_ADDRESS_TYPE_THREEBYTES:I = 0x30

.field static final FLAG_ATTRIBUTE_ADDRESS_TYPE_TWOBYTES:I = 0x20

.field static final FLAG_ATTRIBUTE_FREQUENCY:I = 0xf

.field static final FLAG_ATTRIBUTE_HAS_NEXT:I = 0x80

.field static final FLAG_ATTRIBUTE_OFFSET_NEGATIVE:I = 0x40

.field static final FLAG_GROUP_ADDRESS_TYPE_NOADDRESS:I = 0x0

.field static final FLAG_GROUP_ADDRESS_TYPE_ONEBYTE:I = 0x40

.field static final FLAG_GROUP_ADDRESS_TYPE_THREEBYTES:I = 0xc0

.field static final FLAG_GROUP_ADDRESS_TYPE_TWOBYTES:I = 0x80

.field static final FLAG_HAS_BIGRAMS:I = 0x4

.field static final FLAG_HAS_MULTIPLE_CHARS:I = 0x20

.field static final FLAG_HAS_SHORTCUT_TARGETS:I = 0x8

.field static final FLAG_IS_BLACKLISTED:I = 0x1

.field static final FLAG_IS_MOVED:I = 0x40

.field static final FLAG_IS_NOT_A_WORD:I = 0x2

.field static final FLAG_IS_TERMINAL:I = 0x10

.field static final FORWARD_LINK_ADDRESS_SIZE:I = 0x3

.field static final FRENCH_LIGATURE_PROCESSING_FLAG:I = 0x4

.field static final GERMAN_UMLAUT_PROCESSING_FLAG:I = 0x1

.field static final GROUP_ATTRIBUTE_FLAGS_SIZE:I = 0x1

.field static final GROUP_ATTRIBUTE_MAX_ADDRESS_SIZE:I = 0x3

.field static final GROUP_CHARACTERS_TERMINATOR:I = 0x1f

.field static final GROUP_FLAGS_SIZE:I = 0x1

.field static final GROUP_FREQUENCY_SIZE:I = 0x1

.field static final GROUP_MAX_ADDRESS_SIZE:I = 0x3

.field static final GROUP_SHORTCUT_LIST_SIZE_SIZE:I = 0x2

.field static final GROUP_TERMINATOR_SIZE:I = 0x1

.field static final INVALID_CHARACTER:I = -0x1

.field static final MASK_ATTRIBUTE_ADDRESS_TYPE:I = 0x30

.field static final MASK_GROUP_ADDRESS_TYPE:I = 0xc0

.field static final MAXIMUM_SUPPORTED_VERSION:I = 0x3

.field static final MAX_BIGRAM_FREQUENCY:I = 0xf

.field static final MAX_CHARGROUPS_FOR_ONE_BYTE_CHARGROUP_COUNT:I = 0x7f

.field static final MAX_CHARGROUPS_IN_A_NODE:I = 0x7fff

.field static final MAX_TERMINAL_FREQUENCY:I = 0xff

.field static final MAX_WORD_LENGTH:I = 0x30

.field static final MINIMUM_SUPPORTED_VERSION:I = 0x1

.field static final NOT_A_VERSION_NUMBER:I = -0x1

.field static final NOT_VALID_WORD:I = -0x63

.field static final NO_CHILDREN_ADDRESS:I = -0x80000000

.field static final NO_FORWARD_LINK_ADDRESS:I = 0x0

.field static final NO_PARENT_ADDRESS:I = 0x0

.field static final PARENT_ADDRESS_SIZE:I = 0x3

.field static final SIGNED_CHILDREN_ADDRESS_SIZE:I = 0x3

.field static final SUPPORTS_DYNAMIC_UPDATE:I = 0x2

.field static final VERSION_1_MAGIC_NUMBER:I = 0x78b1

.field public static final VERSION_2_MAGIC_NUMBER:I = -0x643ec502


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    return-void
.end method
