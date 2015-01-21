.class public Lzte/com/cn/cloudnotepad/utils/ResourceUtils;
.super Ljava/lang/Object;
.source "ResourceUtils.java"


# static fields
.field private static final MAP_SHOT_HEIGHT:I = 0x12c

#the value of this static final field might be set in the static constructor
.field private static final MAP_SHOT_TEXT_HEIGHT:I = 0x0

.field private static final MAP_SHOT_X:I = 0xa

.field public static final NOTE_MAX_RESOURCE_SIZE:I = 0x3200000

.field public static final NOTE_MINI_EDIT_FONT_SIZE:I = 0x24

#the value of this static final field might be set in the static constructor
.field public static final NOTE_MINI_EDIT_PAD_HORIZONTAL:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final NOTE_OBJECT_PAD_HORIZONTAL:I = 0x0

.field public static final NOTE_OBJECT_PAD_VERTICAL:I = 0xa

.field public static final Predefined_Wallpaper_ResIds:[I = null

.field public static final SuffixMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ResourceUtils"

.field public static final Wallpaper_ResIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const v5, 0x7f02007a

    const v4, 0x7f020079

    const v3, 0x7f020077

    const/4 v2, 0x6

    .line 69
    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getRes()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->MAP_SHOT_TEXT_HEIGHT:I

    .line 71
    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getRes()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->NOTE_OBJECT_PAD_HORIZONTAL:I

    .line 72
    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getRes()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->NOTE_MINI_EDIT_PAD_HORIZONTAL:I

    .line 81
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->Predefined_Wallpaper_ResIds:[I

    .line 86
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->Wallpaper_ResIds:[I

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    .line 93
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".txt"

    const v2, 0x7f020091

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".amr"

    const v2, 0x7f02007e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".mp3"

    const v2, 0x7f020085

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".3ga"

    const v2, 0x7f02007b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".3gpp"

    const v2, 0x7f02007c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".aac"

    const v2, 0x7f02007d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".flac"

    const v2, 0x7f02007f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".imy"

    const v2, 0x7f020080

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".m4a"

    const v2, 0x7f020081

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".mid"

    const v2, 0x7f020082

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".midi"

    const v2, 0x7f020083

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".mogg"

    const v2, 0x7f020084

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".ogg"

    const v2, 0x7f020089

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".mp4a"

    const v2, 0x7f020086

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".mpeg"

    const v2, 0x7f020087

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".mxmf"

    const v2, 0x7f020088

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".ota"

    const v2, 0x7f02008a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".qcp"

    const v2, 0x7f02008b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".rtttl"

    const v2, 0x7f02008c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".rtx"

    const v2, 0x7f02008d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".wav"

    const v2, 0x7f02008e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".wma"

    const v2, 0x7f02008f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".xmf"

    const v2, 0x7f020090

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".3g2"

    const v2, 0x7f020092

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".3gp"

    const v2, 0x7f020093

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".avi"

    const v2, 0x7f020094

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".m4v"

    const v2, 0x7f020095

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".mov"

    const v2, 0x7f020096

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".mp4"

    const v2, 0x7f020097

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".mpg"

    const v2, 0x7f020098

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".rmvb"

    const v2, 0x7f020099

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".webm"

    const v2, 0x7f02009a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".wmv"

    const v2, 0x7f02009b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".apk"

    const v2, 0x7f020070

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".pdf"

    const v2, 0x7f020078

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".doc"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".docx"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".xls"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".xlsx"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".ppt"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    const-string v1, ".pptx"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void

    .line 81
    nop

    :array_0
    .array-data 0x4
        0xb7t 0x0t 0x2t 0x7ft
        0xb9t 0x0t 0x2t 0x7ft
        0xbbt 0x0t 0x2t 0x7ft
        0xbdt 0x0t 0x2t 0x7ft
        0xbft 0x0t 0x2t 0x7ft
        0xc1t 0x0t 0x2t 0x7ft
    .end array-data

    .line 86
    :array_1
    .array-data 0x4
        0xb6t 0x0t 0x2t 0x7ft
        0xb8t 0x0t 0x2t 0x7ft
        0xbat 0x0t 0x2t 0x7ft
        0xbct 0x0t 0x2t 0x7ft
        0xbet 0x0t 0x2t 0x7ft
        0xc0t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static InitExportImage(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Ljava/util/LinkedList;Ljava/util/LinkedList;)I
    .locals 11
    .parameter "activity"
    .parameter "noteData"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;",
            "Ljava/util/LinkedList",
            "<",
            "Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;",
            ">;",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 843
    .local p2, controlDataList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;>;"
    .local p3, controlBitmapList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/graphics/Bitmap;>;"
    const/4 v5, 0x0

    .line 844
    .local v5, height:I
    new-instance v2, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-direct {v2}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;-><init>()V

    .line 845
    .local v2, controlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;
    iget-object v9, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content:Ljava/lang/String;

    invoke-virtual {v2, v9}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->setControls(Ljava/lang/String;)V

    .line 846
    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlsSize()I

    move-result v3

    .line 847
    .local v3, count:I
    const/4 v8, 0x0

    .line 848
    .local v8, srcBit:Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-lt v6, v3, :cond_2

    .line 886
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090100

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {p0, v9, v10}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->drawTextImage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 887
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/2addr v9, v5

    add-int/lit8 v5, v9, 0xa

    .line 888
    new-instance v1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    invoke-direct {v1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;-><init>()V

    .line 889
    .local v1, controlDataLogo:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;
    const-string v9, "text"

    iput-object v9, v1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    .line 890
    invoke-virtual {p2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 891
    invoke-virtual {p3, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 893
    iget-object v9, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 894
    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getLocationStoragePath()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p1, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    invoke-static {p0, v9, v10}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getBitmapListIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 895
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/2addr v9, v5

    add-int/lit8 v5, v9, 0x78

    .line 899
    invoke-virtual {p3, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 901
    :cond_0
    if-nez v5, :cond_1

    .line 902
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Display;->getHeight()I

    move-result v5

    :cond_1
    move v9, v5

    .line 904
    .end local v1           #controlDataLogo:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;
    :goto_1
    return v9

    .line 849
    :cond_2
    const/4 v0, 0x0

    .line 851
    .local v0, controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;
    :try_start_0
    invoke-virtual {v2, v6}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlData(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 855
    iget-object v9, v0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    const-string v10, "text"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 856
    iget-object v9, v0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->content:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 848
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 852
    :catch_0
    move-exception v4

    .line 853
    .local v4, e:Ljava/lang/Exception;
    const/4 v9, -0x1

    goto :goto_1

    .line 859
    .end local v4           #e:Ljava/lang/Exception;
    :cond_3
    invoke-static {p0, v0}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->drawTextImage(Landroid/content/Context;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 860
    add-int/lit8 v9, v3, -0x1

    if-ne v6, v9, :cond_4

    const/4 v7, 0x0

    .line 862
    .local v7, padHeight:I
    :goto_3
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/2addr v9, v5

    add-int v5, v9, v7

    .line 881
    :goto_4
    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 882
    invoke-virtual {p3, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 860
    .end local v7           #padHeight:I
    :cond_4
    const/16 v7, 0xa

    goto :goto_3

    .line 864
    :cond_5
    iget-object v9, v0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    const-string v10, "video"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 865
    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->name:Ljava/lang/String;

    invoke-static {p0, v9, v10}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getBitmapListIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 866
    add-int/lit8 v9, v3, -0x1

    if-ne v6, v9, :cond_6

    const/4 v7, 0x0

    .line 867
    .restart local v7       #padHeight:I
    :goto_5
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/2addr v9, v5

    add-int v5, v9, v7

    goto :goto_4

    .line 866
    .end local v7           #padHeight:I
    :cond_6
    const/16 v7, 0xa

    goto :goto_5

    .line 868
    :cond_7
    iget-object v9, v0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    const-string v10, "record"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 869
    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v9

    const-string v10, "record"

    invoke-static {p0, v9, v10}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getBitmapListIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 870
    add-int/lit8 v9, v3, -0x1

    if-ne v6, v9, :cond_8

    const/16 v7, 0x14

    .line 871
    .restart local v7       #padHeight:I
    :goto_6
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/2addr v9, v5

    add-int v5, v9, v7

    goto :goto_4

    .line 870
    .end local v7           #padHeight:I
    :cond_8
    const/16 v7, 0x1e

    goto :goto_6

    .line 872
    :cond_9
    iget-object v9, v0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    const-string v10, "other"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 873
    const/4 v9, 0x0

    iget-object v10, v0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->content:Ljava/lang/String;

    invoke-static {p0, v9, v10}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getBitmapListIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 874
    add-int/lit8 v9, v3, -0x1

    if-ne v6, v9, :cond_a

    const/16 v7, 0x14

    .line 875
    .restart local v7       #padHeight:I
    :goto_7
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/2addr v9, v5

    add-int v5, v9, v7

    goto :goto_4

    .line 874
    .end local v7           #padHeight:I
    :cond_a
    const/16 v7, 0x1e

    goto :goto_7

    .line 877
    :cond_b
    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->content:Ljava/lang/String;

    invoke-static {p0, v9, v10}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getBitmapListIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 878
    add-int/lit8 v9, v3, -0x1

    if-ne v6, v9, :cond_c

    const/4 v7, 0x0

    .line 879
    .restart local v7       #padHeight:I
    :goto_8
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/2addr v9, v5

    add-int v5, v9, v7

    goto/16 :goto_4

    .line 878
    .end local v7           #padHeight:I
    :cond_c
    const/16 v7, 0xa

    goto :goto_8
.end method

.method public static createContentThumbnail(Landroid/content/Context;Ljava/lang/String;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)V
    .locals 33
    .parameter "context"
    .parameter "dir"
    .parameter "noteData"

    .prologue
    .line 1276
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v2

    invoke-virtual {v2}, Lzte/com/cn/cloudnotepad/NoteApp;->getScreenWidth()I

    move-result v6

    .line 1277
    .local v6, contentWidth:I
    invoke-static/range {p0 .. p0}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getNoteContentThumbnailHeight(Landroid/content/Context;)I

    move-result v32

    .line 1278
    .local v32, thumbnailHeight:I
    const/16 v31, 0x0

    .line 1280
    .local v31, thumbnail:Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v32

    invoke-static {v6, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v31

    .line 1288
    const/4 v2, -0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1289
    new-instance v7, Landroid/graphics/Canvas;

    move-object/from16 v0, v31

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1290
    .local v7, canvas:Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 1291
    .local v8, paint:Landroid/graphics/Paint;
    const/high16 v2, -0x100

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1292
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1293
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "cover_"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    iget v9, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->id:I

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ".jpg"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1294
    .local v24, filename:Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v2, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->wallpaper:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v7, v6, v2}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->drawWallPaper(Landroid/content/Context;Landroid/graphics/Canvas;ILjava/lang/String;)V

    .line 1295
    sget v25, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->NOTE_OBJECT_PAD_HORIZONTAL:I

    .line 1296
    .local v25, height:I
    const/4 v2, 0x0

    move/from16 v0, v25

    int-to-float v9, v0

    invoke-virtual {v7, v2, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1297
    new-instance v18, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-direct/range {v18 .. v18}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;-><init>()V

    .line 1298
    .local v18, controlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;
    move-object/from16 v0, p2

    iget-object v2, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->setControls(Ljava/lang/String;)V

    .line 1299
    invoke-virtual/range {v18 .. v18}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlsSize()I

    move-result v19

    .line 1300
    .local v19, count:I
    const/4 v4, 0x0

    .line 1301
    .local v4, srcBit:Landroid/graphics/Bitmap;
    const/16 v26, 0x0

    .local v26, i:I
    :goto_0
    move/from16 v0, v26

    move/from16 v1, v19

    if-lt v0, v1, :cond_6

    .line 1365
    :cond_0
    move/from16 v0, v25

    move/from16 v1, v32

    if-ge v0, v1, :cond_3

    .line 1366
    move-object/from16 v0, p2

    iget-object v2, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object/from16 v0, p2

    iget-object v2, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1367
    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getLocationStoragePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v9, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v9}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getBitmapListIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1368
    const/high16 v16, 0x3f80

    .line 1369
    .local v16, bitScale:F
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sget v9, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->NOTE_OBJECT_PAD_HORIZONTAL:I

    mul-int/lit8 v9, v9, 0x4

    sub-int v9, v6, v9

    if-le v2, v9, :cond_1

    .line 1370
    move-object/from16 v27, v4

    .line 1371
    .local v27, oldBit:Landroid/graphics/Bitmap;
    sget v2, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->NOTE_OBJECT_PAD_HORIZONTAL:I

    mul-int/lit8 v2, v2, 0x4

    sub-int v2, v6, v2

    int-to-float v2, v2

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v16, v2, v9

    .line 1372
    sget v2, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->NOTE_OBJECT_PAD_HORIZONTAL:I

    mul-int/lit8 v2, v2, 0x4

    sub-int v2, v6, v2

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float v9, v9, v16

    float-to-int v9, v9

    const/4 v10, 0x0

    move-object/from16 v0, v27

    invoke-static {v0, v2, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1373
    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->recycle()V

    .line 1376
    .end local v27           #oldBit:Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v16

    float-to-int v2, v2

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v2, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 1377
    .local v17, bitmap:Landroid/graphics/Bitmap;
    const/4 v2, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1378
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v9, 0x7f02006c

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 1379
    .local v5, bgDrawable:Landroid/graphics/drawable/NinePatchDrawable;
    move-object/from16 v0, p2

    iget-object v10, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->address:Ljava/lang/String;

    move-object/from16 v9, p0

    move-object v11, v4

    move-object v12, v5

    move v13, v6

    move-object v14, v7

    move-object v15, v8

    invoke-static/range {v9 .. v15}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->drawLocation(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/drawable/NinePatchDrawable;ILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1380
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 1383
    .end local v5           #bgDrawable:Landroid/graphics/drawable/NinePatchDrawable;
    .end local v16           #bitScale:F
    .end local v17           #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    if-eqz v4, :cond_3

    .line 1384
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1385
    const/4 v4, 0x0

    .line 1389
    :cond_3
    const v29, 0x3ecccccd

    .line 1390
    .local v29, scale:F
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    .line 1391
    .local v14, matrix:Landroid/graphics/Matrix;
    move/from16 v0, v29

    move/from16 v1, v29

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1392
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x1

    move-object/from16 v9, v31

    move v12, v6

    move/from16 v13, v32

    invoke-static/range {v9 .. v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v20

    .line 1393
    .local v20, cover:Landroid/graphics/Bitmap;
    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->storeBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    .line 1395
    if-eqz v20, :cond_4

    .line 1396
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->recycle()V

    .line 1397
    const/16 v20, 0x0

    .line 1401
    :cond_4
    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Bitmap;->recycle()V

    .line 1402
    const/16 v31, 0x0

    .line 1405
    .end local v4           #srcBit:Landroid/graphics/Bitmap;
    .end local v7           #canvas:Landroid/graphics/Canvas;
    .end local v8           #paint:Landroid/graphics/Paint;
    .end local v14           #matrix:Landroid/graphics/Matrix;
    .end local v18           #controlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;
    .end local v19           #count:I
    .end local v20           #cover:Landroid/graphics/Bitmap;
    .end local v24           #filename:Ljava/lang/String;
    .end local v25           #height:I
    .end local v26           #i:I
    .end local v29           #scale:F
    :cond_5
    :goto_1
    return-void

    .line 1281
    :catch_0
    move-exception v23

    .line 1282
    .local v23, e:Ljava/lang/OutOfMemoryError;
    if-eqz v31, :cond_5

    .line 1283
    invoke-virtual/range {v31 .. v31}, Landroid/graphics/Bitmap;->recycle()V

    .line 1284
    const/16 v31, 0x0

    goto :goto_1

    .line 1302
    .end local v23           #e:Ljava/lang/OutOfMemoryError;
    .restart local v4       #srcBit:Landroid/graphics/Bitmap;
    .restart local v7       #canvas:Landroid/graphics/Canvas;
    .restart local v8       #paint:Landroid/graphics/Paint;
    .restart local v18       #controlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;
    .restart local v19       #count:I
    .restart local v24       #filename:Ljava/lang/String;
    .restart local v25       #height:I
    .restart local v26       #i:I
    :cond_6
    const/4 v3, 0x0

    .line 1304
    .local v3, controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;
    :try_start_1
    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlData(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 1308
    move/from16 v0, v25

    move/from16 v1, v32

    if-gt v0, v1, :cond_0

    .line 1311
    iget-object v2, v3, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    const-string v9, "text"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1312
    iget-object v2, v3, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->content:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1301
    :goto_2
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_0

    .line 1305
    :catch_1
    move-exception v23

    .line 1306
    .local v23, e:Ljava/lang/Exception;
    goto :goto_1

    .line 1315
    .end local v23           #e:Ljava/lang/Exception;
    :cond_7
    add-int/lit8 v2, v19, -0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_8

    const/16 v28, 0x0

    .line 1316
    .local v28, padHeight:I
    :goto_3
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getTextImageLayout(Landroid/content/Context;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)Landroid/text/StaticLayout;

    move-result-object v2

    move/from16 v0, v32

    invoke-static {v2, v0}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->drawTextImage(Landroid/text/StaticLayout;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1318
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int v2, v2, v25

    add-int v25, v2, v28

    .line 1319
    new-instance v30, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    move-object/from16 v0, v30

    invoke-direct {v0, v2, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1320
    .local v30, srcRect:Landroid/graphics/Rect;
    new-instance v22, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int v2, v6, v2

    div-int/lit8 v2, v2, 0x2

    const/4 v9, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int v10, v6, v10

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1321
    .local v22, dstRect:Landroid/graphics/Rect;
    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v7, v4, v0, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1322
    const/4 v2, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/lit8 v9, v9, 0xa

    int-to-float v9, v9

    invoke-virtual {v7, v2, v9}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_2

    .line 1315
    .end local v22           #dstRect:Landroid/graphics/Rect;
    .end local v28           #padHeight:I
    .end local v30           #srcRect:Landroid/graphics/Rect;
    :cond_8
    const/16 v28, 0xa

    goto :goto_3

    .line 1324
    :cond_9
    iget-object v2, v3, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    const-string v9, "video"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1325
    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v2

    iget-object v9, v3, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v9}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getBitmapListIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1326
    add-int/lit8 v2, v19, -0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_a

    const/16 v28, 0x0

    .line 1327
    .restart local v28       #padHeight:I
    :goto_4
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int v2, v2, v25

    add-int v25, v2, v28

    .line 1328
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int v2, v2, v25

    add-int v25, v2, v28

    .line 1329
    new-instance v30, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    move-object/from16 v0, v30

    invoke-direct {v0, v2, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1330
    .restart local v30       #srcRect:Landroid/graphics/Rect;
    new-instance v22, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int v2, v6, v2

    div-int/lit8 v2, v2, 0x2

    const/4 v9, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int v10, v6, v10

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1331
    .restart local v22       #dstRect:Landroid/graphics/Rect;
    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v7, v4, v0, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1332
    const/4 v2, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/lit8 v9, v9, 0xa

    int-to-float v9, v9

    invoke-virtual {v7, v2, v9}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_2

    .line 1326
    .end local v22           #dstRect:Landroid/graphics/Rect;
    .end local v28           #padHeight:I
    .end local v30           #srcRect:Landroid/graphics/Rect;
    :cond_a
    const/16 v28, 0xa

    goto :goto_4

    .line 1333
    :cond_b
    iget-object v2, v3, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    const-string v9, "record"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1334
    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v2

    const-string v9, "record"

    move-object/from16 v0, p0

    invoke-static {v0, v2, v9}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getBitmapListIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1335
    add-int/lit8 v2, v19, -0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_c

    const/16 v28, 0x14

    .line 1336
    .restart local v28       #padHeight:I
    :goto_5
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int v2, v2, v25

    add-int v25, v2, v28

    .line 1337
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v9, 0x7f02000a

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .local v5, bgDrawable:Landroid/graphics/drawable/Drawable;
    move-object/from16 v2, p0

    .line 1338
    invoke-static/range {v2 .. v8}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->drawOtherAttachment(Landroid/content/Context;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;ILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 1335
    .end local v5           #bgDrawable:Landroid/graphics/drawable/Drawable;
    .end local v28           #padHeight:I
    :cond_c
    const/16 v28, 0x1e

    goto :goto_5

    .line 1339
    :cond_d
    iget-object v2, v3, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    const-string v9, "other"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1340
    const/4 v2, 0x0

    iget-object v9, v3, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->content:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v9}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getBitmapListIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1341
    add-int/lit8 v2, v19, -0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_e

    const/16 v28, 0x14

    .line 1342
    .restart local v28       #padHeight:I
    :goto_6
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int v2, v2, v25

    add-int v25, v2, v28

    .line 1343
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v9, 0x7f02000a

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .restart local v5       #bgDrawable:Landroid/graphics/drawable/Drawable;
    move-object/from16 v2, p0

    .line 1344
    invoke-static/range {v2 .. v8}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->drawOtherAttachment(Landroid/content/Context;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;ILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 1341
    .end local v5           #bgDrawable:Landroid/graphics/drawable/Drawable;
    .end local v28           #padHeight:I
    :cond_e
    const/16 v28, 0x1e

    goto :goto_6

    .line 1346
    :cond_f
    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v2

    iget-object v9, v3, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->content:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v9}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getBitmapListIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1347
    add-int/lit8 v2, v19, -0x1

    move/from16 v0, v26

    if-ne v0, v2, :cond_10

    const/16 v28, 0x0

    .line 1348
    .restart local v28       #padHeight:I
    :goto_7
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-le v2, v6, :cond_11

    .line 1349
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v2, v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int v21, v2, v9

    .line 1350
    .local v21, destHeight:I
    new-instance v30, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    move-object/from16 v0, v30

    invoke-direct {v0, v2, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1351
    .restart local v30       #srcRect:Landroid/graphics/Rect;
    new-instance v22, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-direct {v0, v2, v9, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1352
    .restart local v22       #dstRect:Landroid/graphics/Rect;
    add-int v2, v25, v21

    add-int v25, v2, v28

    .line 1353
    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v7, v4, v0, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1354
    const/4 v2, 0x0

    add-int/lit8 v9, v21, 0xa

    int-to-float v9, v9

    invoke-virtual {v7, v2, v9}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_2

    .line 1347
    .end local v21           #destHeight:I
    .end local v22           #dstRect:Landroid/graphics/Rect;
    .end local v28           #padHeight:I
    .end local v30           #srcRect:Landroid/graphics/Rect;
    :cond_10
    const/16 v28, 0xa

    goto :goto_7

    .line 1357
    .restart local v28       #padHeight:I
    :cond_11
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    add-int v2, v2, v25

    add-int v25, v2, v28

    .line 1358
    new-instance v30, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    move-object/from16 v0, v30

    invoke-direct {v0, v2, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1359
    .restart local v30       #srcRect:Landroid/graphics/Rect;
    new-instance v22, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int v2, v6, v2

    div-int/lit8 v2, v2, 0x2

    const/4 v9, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int v10, v6, v10

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1360
    .restart local v22       #dstRect:Landroid/graphics/Rect;
    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v7, v4, v0, v1, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1361
    const/4 v2, 0x0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/lit8 v9, v9, 0xa

    int-to-float v9, v9

    invoke-virtual {v7, v2, v9}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_2
.end method

.method public static createExampleThumbnail(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)V
    .locals 22
    .parameter "context"
    .parameter "text"
    .parameter "id"
    .parameter "resId"
    .parameter "wallpaper"

    .prologue
    .line 1442
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v4

    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/NoteApp;->getScreenWidth()I

    move-result v6

    .line 1443
    .local v6, contentWidth:I
    invoke-static/range {p0 .. p0}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getNoteContentThumbnailHeight(Landroid/content/Context;)I

    move-result v7

    .line 1444
    .local v7, thumbnailHeight:I
    const/4 v3, 0x0

    .line 1446
    .local v3, thumbnail:Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1454
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1455
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1456
    .local v10, canvas:Landroid/graphics/Canvas;
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 1457
    .local v17, paint:Landroid/graphics/Paint;
    const/high16 v4, -0x100

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1458
    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1459
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getContentStoragePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "cover_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1460
    .local v15, filename:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v10, v6, v1}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->drawWallPaper(Landroid/content/Context;Landroid/graphics/Canvas;ILjava/lang/String;)V

    .line 1461
    sget v16, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->NOTE_OBJECT_PAD_HORIZONTAL:I

    .line 1462
    .local v16, height:I
    const/4 v4, 0x0

    move/from16 v0, v16

    int-to-float v5, v0

    invoke-virtual {v10, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1464
    const/16 v19, 0x0

    .line 1465
    .local v19, srcBit:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v4}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->drawTextImage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 1466
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int v16, v16, v4

    .line 1467
    new-instance v20, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v4, v5, v9, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1468
    .local v20, srcRect:Landroid/graphics/Rect;
    new-instance v13, Landroid/graphics/Rect;

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, v6, v4

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    sub-int v9, v6, v9

    div-int/lit8 v9, v9, 0x2

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    add-int v9, v9, v21

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move/from16 v0, v21

    invoke-direct {v13, v4, v5, v9, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1469
    .local v13, dstRect:Landroid/graphics/Rect;
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v10, v0, v1, v13, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1470
    const/4 v4, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, 0xa

    int-to-float v5, v5

    invoke-virtual {v10, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1472
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 1474
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-le v4, v6, :cond_2

    .line 1475
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v4, v6

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int v12, v4, v5

    .line 1476
    .local v12, destHeight:I
    new-instance v20, Landroid/graphics/Rect;

    .end local v20           #srcRect:Landroid/graphics/Rect;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v4, v5, v9, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1477
    .restart local v20       #srcRect:Landroid/graphics/Rect;
    new-instance v13, Landroid/graphics/Rect;

    .end local v13           #dstRect:Landroid/graphics/Rect;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v13, v4, v5, v6, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1478
    .restart local v13       #dstRect:Landroid/graphics/Rect;
    add-int v16, v16, v12

    .line 1479
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v10, v0, v1, v13, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1480
    const/4 v4, 0x0

    add-int/lit8 v5, v12, 0xa

    int-to-float v5, v5

    invoke-virtual {v10, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1490
    .end local v12           #destHeight:I
    :goto_0
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->recycle()V

    .line 1491
    const/16 v19, 0x0

    .line 1494
    const v18, 0x3ecccccd

    .line 1495
    .local v18, scale:F
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 1496
    .local v8, matrix:Landroid/graphics/Matrix;
    move/from16 v0, v18

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1497
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 1498
    .local v11, cover:Landroid/graphics/Bitmap;
    invoke-static {v11, v15}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->storeBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    .line 1500
    if-eqz v11, :cond_0

    .line 1501
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 1502
    const/4 v11, 0x0

    .line 1506
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1507
    const/4 v3, 0x0

    .line 1510
    .end local v8           #matrix:Landroid/graphics/Matrix;
    .end local v10           #canvas:Landroid/graphics/Canvas;
    .end local v11           #cover:Landroid/graphics/Bitmap;
    .end local v13           #dstRect:Landroid/graphics/Rect;
    .end local v15           #filename:Ljava/lang/String;
    .end local v16           #height:I
    .end local v17           #paint:Landroid/graphics/Paint;
    .end local v18           #scale:F
    .end local v19           #srcBit:Landroid/graphics/Bitmap;
    .end local v20           #srcRect:Landroid/graphics/Rect;
    :cond_1
    :goto_1
    return-void

    .line 1447
    :catch_0
    move-exception v14

    .line 1448
    .local v14, e:Ljava/lang/OutOfMemoryError;
    if-eqz v3, :cond_1

    .line 1449
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 1450
    const/4 v3, 0x0

    goto :goto_1

    .line 1483
    .end local v14           #e:Ljava/lang/OutOfMemoryError;
    .restart local v10       #canvas:Landroid/graphics/Canvas;
    .restart local v13       #dstRect:Landroid/graphics/Rect;
    .restart local v15       #filename:Ljava/lang/String;
    .restart local v16       #height:I
    .restart local v17       #paint:Landroid/graphics/Paint;
    .restart local v19       #srcBit:Landroid/graphics/Bitmap;
    .restart local v20       #srcRect:Landroid/graphics/Rect;
    :cond_2
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int v16, v16, v4

    .line 1484
    new-instance v20, Landroid/graphics/Rect;

    .end local v20           #srcRect:Landroid/graphics/Rect;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v0, v4, v5, v9, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1485
    .restart local v20       #srcRect:Landroid/graphics/Rect;
    new-instance v13, Landroid/graphics/Rect;

    .end local v13           #dstRect:Landroid/graphics/Rect;
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v4, v6, v4

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    sub-int v9, v6, v9

    div-int/lit8 v9, v9, 0x2

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    add-int v9, v9, v21

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v21

    move/from16 v0, v21

    invoke-direct {v13, v4, v5, v9, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1486
    .restart local v13       #dstRect:Landroid/graphics/Rect;
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v10, v0, v1, v13, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1487
    const/4 v4, 0x0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, 0xa

    int-to-float v5, v5

    invoke-virtual {v10, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method public static createExportBitmap(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)Landroid/graphics/Bitmap;
    .locals 24
    .parameter "activity"
    .parameter "noteData"

    .prologue
    .line 753
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v7

    .line 754
    .local v7, width:I
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    mul-int/lit8 v18, v3, 0x4

    .line 755
    .local v18, maxHeight:I
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    .line 756
    .local v12, controlDataList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;>;"
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 757
    .local v11, controlBitmapList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/graphics/Bitmap;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v12, v11}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->InitExportImage(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Ljava/util/LinkedList;Ljava/util/LinkedList;)I

    move-result v16

    .line 758
    .local v16, height:I
    const/high16 v19, 0x3f80

    .line 760
    .local v19, scale:F
    const/4 v3, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_1

    .line 761
    const/4 v13, 0x0

    .line 814
    :cond_0
    :goto_0
    return-object v13

    .line 763
    :cond_1
    move/from16 v0, v16

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    .line 764
    move/from16 v0, v18

    int-to-float v3, v0

    move/from16 v0, v16

    int-to-float v4, v0

    div-float v19, v3, v4

    .line 766
    :cond_2
    const/4 v13, 0x0

    .line 768
    .local v13, dstBit:Landroid/graphics/Bitmap;
    int-to-float v3, v7

    mul-float v3, v3, v19

    float-to-int v3, v3

    move/from16 v0, v16

    int-to-float v4, v0

    mul-float v4, v4, v19

    float-to-int v4, v4

    :try_start_0
    sget-object v22, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v22

    invoke-static {v3, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 776
    const/4 v3, -0x1

    invoke-virtual {v13, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 777
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 778
    .local v8, canvas:Landroid/graphics/Canvas;
    move/from16 v0, v19

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 779
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 780
    .local v9, paint:Landroid/graphics/Paint;
    const/high16 v3, -0x100

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 781
    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 782
    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 783
    const-string v21, ""

    .line 784
    .local v21, type:Ljava/lang/String;
    const/4 v5, 0x0

    .line 785
    .local v5, srcBit:Landroid/graphics/Bitmap;
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v3

    move/from16 v0, v17

    if-lt v0, v3, :cond_6

    .line 800
    move-object/from16 v0, p1

    iget-object v3, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    if-eqz v3, :cond_4

    move-object/from16 v0, p1

    iget-object v3, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 801
    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v11, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #srcBit:Landroid/graphics/Bitmap;
    check-cast v5, Landroid/graphics/Bitmap;

    .line 802
    .restart local v5       #srcBit:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sget v4, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->NOTE_OBJECT_PAD_HORIZONTAL:I

    mul-int/lit8 v4, v4, 0x4

    sub-int v4, v7, v4

    if-le v3, v4, :cond_3

    .line 803
    sget v3, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->NOTE_OBJECT_PAD_HORIZONTAL:I

    mul-int/lit8 v3, v3, 0x4

    sub-int v3, v7, v3

    int-to-float v3, v3

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v10, v3, v4

    .line 804
    .local v10, bitScale:F
    sget v3, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->NOTE_OBJECT_PAD_HORIZONTAL:I

    mul-int/lit8 v3, v3, 0x4

    sub-int v3, v7, v3

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v10

    float-to-int v4, v4

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-static {v5, v3, v4, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 807
    .end local v10           #bitScale:F
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02006c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/NinePatchDrawable;

    .line 808
    .local v6, bgDrawable:Landroid/graphics/drawable/NinePatchDrawable;
    move-object/from16 v0, p1

    iget-object v4, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->address:Ljava/lang/String;

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->drawLocation(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/drawable/NinePatchDrawable;ILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 810
    .end local v6           #bgDrawable:Landroid/graphics/drawable/NinePatchDrawable;
    :cond_4
    if-eqz v5, :cond_0

    .line 811
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 812
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 769
    .end local v5           #srcBit:Landroid/graphics/Bitmap;
    .end local v8           #canvas:Landroid/graphics/Canvas;
    .end local v9           #paint:Landroid/graphics/Paint;
    .end local v17           #i:I
    .end local v21           #type:Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 770
    .local v15, e:Ljava/lang/OutOfMemoryError;
    if-eqz v13, :cond_5

    .line 771
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 772
    const/4 v13, 0x0

    .line 774
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 786
    .end local v15           #e:Ljava/lang/OutOfMemoryError;
    .restart local v5       #srcBit:Landroid/graphics/Bitmap;
    .restart local v8       #canvas:Landroid/graphics/Canvas;
    .restart local v9       #paint:Landroid/graphics/Paint;
    .restart local v17       #i:I
    .restart local v21       #type:Ljava/lang/String;
    :cond_6
    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    iget-object v0, v3, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 787
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #srcBit:Landroid/graphics/Bitmap;
    check-cast v5, Landroid/graphics/Bitmap;

    .line 788
    .restart local v5       #srcBit:Landroid/graphics/Bitmap;
    const-string v3, "record"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "other"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 789
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 790
    .local v6, bgDrawable:Landroid/graphics/drawable/Drawable;
    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->drawOtherAttachment(Landroid/content/Context;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;ILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 785
    .end local v6           #bgDrawable:Landroid/graphics/drawable/Drawable;
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 792
    :cond_8
    new-instance v20, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 793
    .local v20, srcRect:Landroid/graphics/Rect;
    new-instance v14, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v3, v7, v3

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    sub-int v22, v7, v22

    div-int/lit8 v22, v22, 0x2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    add-int v22, v22, v23

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v14, v3, v4, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 794
    .local v14, dstRect:Landroid/graphics/Rect;
    move-object/from16 v0, v20

    invoke-virtual {v8, v5, v0, v14, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 795
    const/4 v3, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_2
.end method

.method public static createExportImage(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Ljava/lang/String;)Z
    .locals 4
    .parameter "activity"
    .parameter "noteData"
    .parameter "filePath"

    .prologue
    const/4 v2, 0x0

    .line 818
    invoke-static {p0, p1}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->createExportBitmap(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 820
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 822
    :try_start_0
    invoke-static {p2}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->createFile(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-nez v3, :cond_1

    .line 831
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 832
    const/4 v0, 0x0

    .line 835
    :cond_0
    :goto_0
    return v2

    .line 825
    :cond_1
    :try_start_1
    invoke-static {v0, p2}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->storeBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    .line 826
    new-instance v1, Lzte/com/cn/cloudnotepad/utils/MediaProviderUtils;

    invoke-direct {v1, p0, p2}, Lzte/com/cn/cloudnotepad/utils/MediaProviderUtils;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 827
    .local v1, mediaProviderUtils:Lzte/com/cn/cloudnotepad/utils/MediaProviderUtils;
    invoke-virtual {v1}, Lzte/com/cn/cloudnotepad/utils/MediaProviderUtils;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 831
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 832
    const/4 v0, 0x0

    .line 829
    const/4 v2, 0x1

    goto :goto_0

    .line 830
    .end local v1           #mediaProviderUtils:Lzte/com/cn/cloudnotepad/utils/MediaProviderUtils;
    :catchall_0
    move-exception v2

    .line 831
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 832
    const/4 v0, 0x0

    .line 833
    throw v2
.end method

.method public static createExportPDF(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Ljava/lang/String;)Z
    .locals 3
    .parameter "activity"
    .parameter "noteData"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1083
    invoke-static {p0, p1}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->createExportBitmap(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1085
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 1087
    :try_start_0
    invoke-static {p2}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->createFile(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_1

    .line 1093
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1094
    const/4 v0, 0x0

    .line 1097
    :cond_0
    :goto_0
    return v1

    .line 1090
    :cond_1
    :try_start_1
    invoke-static {v0, p2}, Lzte/com/cn/cloudnotepad/utils/PdfUtils;->createPdf(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1093
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1094
    const/4 v0, 0x0

    .line 1091
    const/4 v1, 0x1

    goto :goto_0

    .line 1092
    :catchall_0
    move-exception v1

    .line 1093
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1094
    const/4 v0, 0x0

    .line 1095
    throw v1
.end method

.method public static createExportRTF(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;Ljava/lang/String;)Z
    .locals 3
    .parameter "activity"
    .parameter "noteData"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1102
    invoke-static {p0, p1}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->createExportRtf(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)Ljava/util/List;

    move-result-object v0

    .line 1103
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/tutego/jrtf/RtfPara;>;"
    if-nez v0, :cond_1

    .line 1110
    :cond_0
    :goto_0
    return v1

    .line 1106
    :cond_1
    invoke-static {p2}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1109
    invoke-static {v0, p2}, Lzte/com/cn/cloudnotepad/utils/RtfUtils;->createRtf(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1110
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static createExportRtf(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)Ljava/util/List;
    .locals 26
    .parameter "activity"
    .parameter "noteData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/tutego/jrtf/RtfPara;",
            ">;"
        }
    .end annotation

    .prologue
    .line 668
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v6

    .line 669
    .local v6, width:I
    new-instance v18, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-direct/range {v18 .. v18}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;-><init>()V

    .line 670
    .local v18, controlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;
    move-object/from16 v0, p1

    iget-object v2, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->content:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->setControls(Ljava/lang/String;)V

    .line 671
    invoke-virtual/range {v18 .. v18}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlsSize()I

    move-result v19

    .line 672
    .local v19, count:I
    const/4 v4, 0x0

    .line 673
    .local v4, srcBit:Landroid/graphics/Bitmap;
    new-instance v22, Ljava/util/LinkedList;

    invoke-direct/range {v22 .. v22}, Ljava/util/LinkedList;-><init>()V

    .line 675
    .local v22, list:Ljava/util/List;,"Ljava/util/List<Lcom/tutego/jrtf/RtfPara;>;"
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 676
    .local v8, paint:Landroid/graphics/Paint;
    const/high16 v2, -0x100

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 677
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 678
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 680
    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    .line 721
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object/from16 v0, p1

    iget-object v2, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 722
    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getLocationStoragePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v9, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->map:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v9}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getBitmapListIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 723
    const/high16 v16, 0x3f80

    .line 724
    .local v16, bitScale:F
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sget v9, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->NOTE_OBJECT_PAD_HORIZONTAL:I

    mul-int/lit8 v9, v9, 0x4

    sub-int v9, v6, v9

    if-le v2, v9, :cond_0

    .line 725
    move-object/from16 v23, v4

    .line 726
    .local v23, oldBit:Landroid/graphics/Bitmap;
    sget v2, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->NOTE_OBJECT_PAD_HORIZONTAL:I

    mul-int/lit8 v2, v2, 0x4

    sub-int v2, v6, v2

    int-to-float v2, v2

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v16, v2, v9

    .line 727
    sget v2, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->NOTE_OBJECT_PAD_HORIZONTAL:I

    mul-int/lit8 v2, v2, 0x4

    sub-int v2, v6, v2

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float v9, v9, v16

    float-to-int v9, v9

    const/4 v10, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v2, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 728
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Bitmap;->recycle()V

    .line 731
    .end local v23           #oldBit:Landroid/graphics/Bitmap;
    :cond_0
    int-to-float v2, v6

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v25, v2, v9

    .line 732
    .local v25, scale:F
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v25

    float-to-int v2, v2

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v2, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 733
    .local v17, bitmap:Landroid/graphics/Bitmap;
    const/4 v2, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 734
    new-instance v7, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 735
    .local v7, canvas:Landroid/graphics/Canvas;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v9, 0x7f02006c

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/NinePatchDrawable;

    .line 736
    .local v5, bgDrawable:Landroid/graphics/drawable/NinePatchDrawable;
    move-object/from16 v0, p1

    iget-object v10, v0, Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;->address:Ljava/lang/String;

    move-object/from16 v9, p0

    move-object v11, v4

    move-object v12, v5

    move v13, v6

    move-object v14, v7

    move-object v15, v8

    invoke-static/range {v9 .. v15}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->drawLocation(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/drawable/NinePatchDrawable;ILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 737
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 738
    const/4 v4, 0x0

    .line 740
    invoke-static/range {v17 .. v17}, Lzte/com/cn/cloudnotepad/utils/RtfUtils;->makeRftPara(Landroid/graphics/Bitmap;)Lcom/tutego/jrtf/RtfPara;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 749
    .end local v5           #bgDrawable:Landroid/graphics/drawable/NinePatchDrawable;
    .end local v7           #canvas:Landroid/graphics/Canvas;
    .end local v16           #bitScale:F
    .end local v17           #bitmap:Landroid/graphics/Bitmap;
    .end local v22           #list:Ljava/util/List;,"Ljava/util/List<Lcom/tutego/jrtf/RtfPara;>;"
    .end local v25           #scale:F
    :cond_1
    :goto_1
    return-object v22

    .line 681
    .restart local v22       #list:Ljava/util/List;,"Ljava/util/List<Lcom/tutego/jrtf/RtfPara;>;"
    :cond_2
    const/4 v3, 0x0

    .line 682
    .local v3, controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;
    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlData(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v3

    .line 683
    iget-object v2, v3, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    const-string v9, "text"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 684
    iget-object v2, v3, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->content:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 685
    iget-object v2, v3, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->content:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v2, v9}, Lzte/com/cn/cloudnotepad/utils/RtfUtils;->makeRftPara(Ljava/lang/String;Ljava/lang/String;)Lcom/tutego/jrtf/RtfPara;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    :cond_3
    :goto_2
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_0

    .line 689
    :cond_4
    iget-object v2, v3, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    const-string v9, "video"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 690
    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v2

    iget-object v9, v3, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v9}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getBitmapListIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 699
    :goto_3
    const/16 v24, 0x0

    .line 700
    .local v24, para:Lcom/tutego/jrtf/RtfPara;
    iget-object v2, v3, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    const-string v9, "record"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v3, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    const-string v9, "other"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 702
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v9, 0x7f02000a

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 703
    .local v5, bgDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v2, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 704
    .restart local v17       #bitmap:Landroid/graphics/Bitmap;
    const/4 v2, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 705
    new-instance v7, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v7       #canvas:Landroid/graphics/Canvas;
    move-object/from16 v2, p0

    .line 706
    invoke-static/range {v2 .. v8}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->drawOtherAttachment(Landroid/content/Context;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;ILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 707
    invoke-static/range {v17 .. v17}, Lzte/com/cn/cloudnotepad/utils/RtfUtils;->makeRftPara(Landroid/graphics/Bitmap;)Lcom/tutego/jrtf/RtfPara;

    move-result-object v24

    .line 708
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 709
    const/16 v17, 0x0

    .line 715
    .end local v5           #bgDrawable:Landroid/graphics/drawable/Drawable;
    .end local v7           #canvas:Landroid/graphics/Canvas;
    .end local v17           #bitmap:Landroid/graphics/Bitmap;
    :goto_4
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 717
    const/4 v4, 0x0

    goto :goto_2

    .line 691
    .end local v24           #para:Lcom/tutego/jrtf/RtfPara;
    :cond_6
    iget-object v2, v3, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    const-string v9, "record"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 692
    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v2

    const-string v9, "record"

    move-object/from16 v0, p0

    invoke-static {v0, v2, v9}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getBitmapListIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_3

    .line 693
    :cond_7
    iget-object v2, v3, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    const-string v9, "other"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 694
    const/4 v2, 0x0

    iget-object v9, v3, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->content:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v9}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getBitmapListIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_3

    .line 696
    :cond_8
    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v2

    iget-object v9, v3, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->content:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v9}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getBitmapListIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto/16 :goto_3

    .line 712
    .restart local v24       #para:Lcom/tutego/jrtf/RtfPara;
    :cond_9
    invoke-static {v4}, Lzte/com/cn/cloudnotepad/utils/RtfUtils;->makeRftPara(Landroid/graphics/Bitmap;)Lcom/tutego/jrtf/RtfPara;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    goto :goto_4

    .line 745
    .end local v3           #controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;
    .end local v24           #para:Lcom/tutego/jrtf/RtfPara;
    :catch_0
    move-exception v20

    .line 746
    .local v20, e:Ljava/lang/Exception;
    const-string v2, "ResourceUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "createExportRtf exception : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const/16 v22, 0x0

    goto/16 :goto_1
.end method

.method public static createShareImage(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)Z
    .locals 8
    .parameter "activity"
    .parameter "noteData"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1114
    invoke-static {p0, p1}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->createExportBitmap(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1115
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 1136
    :goto_0
    return v4

    .line 1119
    :cond_0
    const/4 v6, 0x1

    :try_start_0
    const-string v7, ".jpg"

    invoke-static {v6, v7}, Lzte/com/cn/cloudnotepad/utils/StringUtils;->getFileName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1121
    .local v2, filePath:Ljava/lang/String;
    invoke-static {v2}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->createFile(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-nez v6, :cond_1

    .line 1138
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1139
    const/4 v0, 0x0

    .line 1122
    goto :goto_0

    .line 1124
    :cond_1
    :try_start_1
    invoke-static {v0, v2}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->storeBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;

    .line 1126
    const-string v4, "com.zte.snsshare"

    invoke-static {v4}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->isApkInstalled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1127
    invoke-static {p0, v2}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->startSnsShareActivity(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1138
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1139
    const/4 v0, 0x0

    move v4, v5

    .line 1136
    goto :goto_0

    .line 1129
    :cond_2
    :try_start_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1130
    .local v1, file:Ljava/io/File;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1131
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1132
    const-string v4, "image/*"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1133
    const-string v4, "android.intent.extra.STREAM"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1134
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1137
    .end local v1           #file:Ljava/io/File;
    .end local v2           #filePath:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v4

    .line 1138
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1139
    const/4 v0, 0x0

    .line 1140
    throw v4
.end method

.method public static createSharePDF(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)Z
    .locals 8
    .parameter "activity"
    .parameter "noteData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1156
    invoke-static {p0, p1}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->createExportBitmap(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1157
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 1173
    :goto_0
    return v4

    .line 1161
    :cond_0
    const/4 v6, 0x1

    :try_start_0
    const-string v7, ".pdf"

    invoke-static {v6, v7}, Lzte/com/cn/cloudnotepad/utils/StringUtils;->getFileName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1163
    .local v3, pdfName:Ljava/lang/String;
    invoke-static {v3}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->createFile(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-nez v6, :cond_1

    .line 1175
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1176
    const/4 v0, 0x0

    .line 1164
    goto :goto_0

    .line 1166
    :cond_1
    :try_start_1
    invoke-static {v0, v3}, Lzte/com/cn/cloudnotepad/utils/PdfUtils;->createPdf(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 1167
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1168
    .local v1, file:Ljava/io/File;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1169
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1170
    const-string v4, "application/pdf"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1171
    const-string v4, "android.intent.extra.STREAM"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1172
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1175
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1176
    const/4 v0, 0x0

    move v4, v5

    .line 1173
    goto :goto_0

    .line 1174
    .end local v1           #file:Ljava/io/File;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #pdfName:Ljava/lang/String;
    :catchall_0
    move-exception v4

    .line 1175
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1176
    const/4 v0, 0x0

    .line 1177
    throw v4
.end method

.method public static createShareRTF(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)Z
    .locals 7
    .parameter "activity"
    .parameter "noteData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1181
    invoke-static {p0, p1}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->createExportRtf(Landroid/app/Activity;Lzte/com/cn/cloudnotepad/data/NotesData$NOTES_DATA;)Ljava/util/List;

    move-result-object v2

    .line 1182
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/tutego/jrtf/RtfPara;>;"
    if-nez v2, :cond_1

    .line 1198
    :cond_0
    :goto_0
    return v4

    .line 1186
    :cond_1
    const-string v6, ".rtf"

    invoke-static {v5, v6}, Lzte/com/cn/cloudnotepad/utils/StringUtils;->getFileName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1188
    .local v3, rtfName:Ljava/lang/String;
    invoke-static {v3}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1191
    invoke-static {v2, v3}, Lzte/com/cn/cloudnotepad/utils/RtfUtils;->createRtf(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1192
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1193
    .local v0, file:Ljava/io/File;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1194
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1195
    const-string v4, "application/rtf"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1196
    const-string v4, "android.intent.extra.STREAM"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1197
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    .line 1198
    goto :goto_0
.end method

.method private static dispatchClickEvent(Landroid/widget/EditText;)V
    .locals 2
    .parameter "editText"

    .prologue
    const/4 v1, 0x0

    .line 442
    invoke-static {v1, v1, v1}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->newMotionEvent(III)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 443
    const/4 v0, 0x1

    invoke-static {v0, v1, v1}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->newMotionEvent(III)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 444
    return-void
.end method

.method public static displayOtherAttachment(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 10
    .parameter "activity"
    .parameter "icon"
    .parameter "fileName"
    .parameter "fileSize"
    .parameter "fileTime"

    .prologue
    const/4 v9, 0x0

    .line 596
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03000b

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 597
    .local v1, linearLayout:Landroid/widget/LinearLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v6

    sget v7, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->NOTE_OBJECT_PAD_HORIZONTAL:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    const/4 v7, -0x2

    invoke-direct {v0, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 598
    .local v0, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v6, 0xa

    invoke-virtual {v0, v9, v6, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 599
    const/4 v6, 0x1

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 600
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 602
    const v6, 0x7f060038

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 603
    .local v3, otherImage:Landroid/widget/ImageView;
    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 605
    const v6, 0x7f06003a

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 606
    .local v2, name:Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    const v6, 0x7f06003b

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 609
    .local v5, time:Landroid/widget/TextView;
    invoke-virtual {v5, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    const v6, 0x7f06003c

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 612
    .local v4, size:Landroid/widget/TextView;
    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    return-object v1
.end method

.method public static displayRecordAttachment(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/LinearLayout;
    .locals 15
    .parameter "activity"
    .parameter "icon"
    .parameter "fileName"
    .parameter "fileSize"
    .parameter "fileTime"

    .prologue
    .line 632
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f03000b

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 633
    .local v3, linearLayout:Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Display;->getWidth()I

    move-result v11

    sget v12, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->NOTE_OBJECT_PAD_HORIZONTAL:I

    mul-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    const/4 v12, -0x2

    invoke-direct {v2, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 634
    .local v2, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v11, 0x0

    const/16 v12, 0xa

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v2, v11, v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 635
    const/4 v11, 0x1

    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 636
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 638
    const v11, 0x7f060038

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 639
    .local v6, otherImage:Landroid/widget/ImageView;
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 641
    const v11, 0x7f06003a

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 642
    .local v5, name:Landroid/widget/TextView;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 644
    const v11, 0x7f06003b

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 645
    .local v9, time:Landroid/widget/TextView;
    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    const v11, 0x7f06003c

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 648
    .local v8, size:Landroid/widget/TextView;
    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 650
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f030027

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 651
    .local v10, view:Landroid/view/View;
    const v11, 0x7f0600bc

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 652
    .local v7, playLayout:Landroid/widget/RelativeLayout;
    const-string v11, "play"

    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 654
    :try_start_0
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    :goto_0
    new-instance v4, Landroid/widget/SeekBar;

    invoke-direct {v4, p0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 660
    .local v4, mStateProgressBar:Landroid/widget/SeekBar;
    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 661
    const v11, 0x7f02000a

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 663
    return-object v3

    .line 655
    .end local v4           #mStateProgressBar:Landroid/widget/SeekBar;
    :catch_0
    move-exception v1

    .line 656
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public static drawLocation(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/drawable/NinePatchDrawable;ILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 16
    .parameter "context"
    .parameter "address"
    .parameter "srcBit"
    .parameter "bgDrawable"
    .parameter "width"
    .parameter "canvas"
    .parameter "paint"

    .prologue
    .line 1020
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V

    .line 1021
    .local v5, textpaint:Landroid/text/TextPaint;
    const/high16 v4, -0x100

    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 1022
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1023
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f020055

    invoke-static {v4, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 1025
    .local v13, iconBit:Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 1026
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x28

    .line 1025
    move/from16 v0, p4

    invoke-direct {v11, v4, v6, v0, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1027
    .local v11, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1028
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1029
    new-instance v14, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v14, v4, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1030
    .local v14, srcRect:Landroid/graphics/Rect;
    new-instance v12, Landroid/graphics/Rect;

    sget v4, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->NOTE_OBJECT_PAD_HORIZONTAL:I

    const/16 v6, 0xa

    .line 1031
    sget v7, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->NOTE_OBJECT_PAD_HORIZONTAL:I

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    add-int/lit8 v8, v8, 0xa

    .line 1030
    invoke-direct {v12, v4, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1032
    .local v12, dstRect:Landroid/graphics/Rect;
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-virtual {v0, v13, v14, v12, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1034
    new-instance v14, Landroid/graphics/Rect;

    .end local v14           #srcRect:Landroid/graphics/Rect;
    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v14, v4, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1035
    .restart local v14       #srcRect:Landroid/graphics/Rect;
    new-instance v12, Landroid/graphics/Rect;

    .end local v12           #dstRect:Landroid/graphics/Rect;
    sget v4, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->NOTE_OBJECT_PAD_HORIZONTAL:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    add-int/lit8 v6, v6, 0x14

    .line 1036
    sget v7, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->NOTE_OBJECT_PAD_HORIZONTAL:I

    mul-int/lit8 v7, v7, 0x2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    add-int/lit8 v8, v8, 0x14

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    .line 1035
    invoke-direct {v12, v4, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1037
    .restart local v12       #dstRect:Landroid/graphics/Rect;
    move-object/from16 v0, p5

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v14, v12, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1039
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f08001f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 1040
    .local v15, textsizeMedium:I
    int-to-float v4, v15

    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1041
    new-instance v3, Landroid/text/StaticLayout;

    new-instance v4, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getLocationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sget v6, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->NOTE_OBJECT_PAD_HORIZONTAL:I

    mul-int/lit8 v6, v6, 0x3

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    sub-int v6, p4, v6

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f80

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 1042
    .local v3, layoutName:Landroid/text/StaticLayout;
    sget v4, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->NOTE_OBJECT_PAD_HORIZONTAL:I

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    add-int/2addr v4, v6

    int-to-float v4, v4

    sget v6, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->NOTE_OBJECT_PAD_HORIZONTAL:I

    int-to-float v6, v6

    move-object/from16 v0, p5

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1043
    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1047
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 1048
    const/4 v13, 0x0

    .line 1051
    return-void
.end method

.method private static drawOtherAttachment(Landroid/content/Context;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;ILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 25
    .parameter "context"
    .parameter "controlData"
    .parameter "srcBit"
    .parameter "bgDrawable"
    .parameter "width"
    .parameter "canvas"
    .parameter "paint"

    .prologue
    .line 983
    new-instance v7, Landroid/text/TextPaint;

    invoke-direct {v7}, Landroid/text/TextPaint;-><init>()V

    .line 984
    .local v7, textpaint:Landroid/text/TextPaint;
    const/high16 v6, -0x100

    invoke-virtual {v7, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 985
    const/4 v6, 0x1

    invoke-virtual {v7, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 986
    new-instance v17, Landroid/graphics/Rect;

    sget v6, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->NOTE_OBJECT_PAD_HORIZONTAL:I

    const/4 v10, 0x0

    .line 987
    sget v11, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->NOTE_OBJECT_PAD_HORIZONTAL:I

    sub-int v11, p4, v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    add-int/lit8 v12, v12, 0x14

    .line 986
    move-object/from16 v0, v17

    invoke-direct {v0, v6, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 988
    .local v17, bounds:Landroid/graphics/Rect;
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 989
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 990
    new-instance v22, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    move-object/from16 v0, v22

    invoke-direct {v0, v6, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 991
    .local v22, srcRect:Landroid/graphics/Rect;
    new-instance v19, Landroid/graphics/Rect;

    sget v6, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->NOTE_OBJECT_PAD_HORIZONTAL:I

    const/16 v10, 0xa

    .line 992
    sget v11, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->NOTE_OBJECT_PAD_HORIZONTAL:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 991
    move-object/from16 v0, v19

    invoke-direct {v0, v6, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 993
    .local v19, dstRect:Landroid/graphics/Rect;
    move-object/from16 v0, p5

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    move-object/from16 v3, v19

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 994
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v10, 0x7f08001d

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    .line 995
    .local v23, textsizeMedium:I
    move/from16 v0, v23

    int-to-float v6, v0

    invoke-virtual {v7, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 997
    move-object/from16 v0, p1

    iget-object v6, v0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->name:Ljava/lang/String;

    const/4 v10, 0x1

    sget v11, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->NOTE_OBJECT_PAD_HORIZONTAL:I

    mul-int/lit8 v11, v11, 0x3

    sub-int v11, p4, v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    const/4 v12, 0x0

    invoke-virtual {v7, v6, v10, v11, v12}, Landroid/text/TextPaint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v18

    .line 998
    .local v18, count:I
    move-object/from16 v0, p1

    iget-object v6, v0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->name:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move/from16 v0, v18

    if-ge v0, v6, :cond_0

    .line 999
    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    iget-object v10, v0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->name:Ljava/lang/String;

    const/4 v11, 0x0

    move/from16 v0, v18

    invoke-virtual {v10, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "."

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    iput-object v6, v0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->name:Ljava/lang/String;

    .line 1001
    :cond_0
    new-instance v5, Landroid/text/StaticLayout;

    new-instance v6, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v10, v0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->name:Ljava/lang/String;

    invoke-direct {v6, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sget v10, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->NOTE_OBJECT_PAD_HORIZONTAL:I

    mul-int/lit8 v10, v10, 0x2

    sub-int v10, p4, v10

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    sub-int v8, v10, v11

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct/range {v5 .. v12}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 1002
    .local v5, layoutName:Landroid/text/StaticLayout;
    sget v6, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->NOTE_OBJECT_PAD_HORIZONTAL:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    add-int/2addr v6, v10

    int-to-float v6, v6

    const/high16 v10, 0x4120

    move-object/from16 v0, p5

    invoke-virtual {v0, v6, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1003
    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1004
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v10, 0x7f08001e

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    .line 1005
    .local v24, textsizeSmall:I
    move/from16 v0, v24

    int-to-float v6, v0

    invoke-virtual {v7, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1006
    new-instance v8, Landroid/text/StaticLayout;

    new-instance v9, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->time:Ljava/lang/String;

    invoke-direct {v9, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sget v6, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->NOTE_OBJECT_PAD_HORIZONTAL:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, p4, v6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int v11, v6, v10

    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v13, 0x3f80

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object v10, v7

    invoke-direct/range {v8 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 1007
    .local v8, layoutTime:Landroid/text/StaticLayout;
    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    sub-int v10, v10, v24

    add-int/lit8 v10, v10, 0x14

    int-to-float v10, v10

    move-object/from16 v0, p5

    invoke-virtual {v0, v6, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1008
    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1009
    move-object/from16 v0, p1

    iget-object v6, v0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->size:Ljava/lang/String;

    const-string v10, "|"

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 1010
    .local v20, index:I
    if-lez v20, :cond_1

    move-object/from16 v0, p1

    iget-object v6, v0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->size:Ljava/lang/String;

    const/4 v10, 0x0

    move/from16 v0, v20

    invoke-virtual {v6, v10, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1011
    .local v21, size:Ljava/lang/String;
    :goto_0
    new-instance v9, Landroid/text/StaticLayout;

    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/16 v12, 0x96

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v14, 0x3f80

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object v11, v7

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 1012
    .local v9, layoutsize:Landroid/text/StaticLayout;
    sget v6, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->NOTE_OBJECT_PAD_HORIZONTAL:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, p4, v6

    add-int/lit16 v6, v6, -0x96

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    sub-int/2addr v6, v10

    int-to-float v6, v6

    const/4 v10, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v6, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1013
    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1014
    sget v6, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->NOTE_OBJECT_PAD_HORIZONTAL:I

    sub-int v6, v6, p4

    add-int/lit16 v6, v6, 0x96

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/text/StaticLayout;->getHeight()I

    move-result v10

    add-int v10, v10, v24

    int-to-float v10, v10

    move-object/from16 v0, p5

    invoke-virtual {v0, v6, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1015
    return-void

    .line 1010
    .end local v9           #layoutsize:Landroid/text/StaticLayout;
    .end local v21           #size:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->size:Ljava/lang/String;

    move-object/from16 v21, v0

    goto :goto_0
.end method

.method private static drawTextImage(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "context"
    .parameter "content"
    .parameter "mold"

    .prologue
    .line 947
    invoke-static {p0, p1, p2}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getTextImageLayout(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/StaticLayout;

    move-result-object v1

    .line 948
    .local v1, layout:Landroid/text/StaticLayout;
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 949
    .local v2, textBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 950
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 951
    return-object v2
.end method

.method private static drawTextImage(Landroid/content/Context;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "context"
    .parameter "controlData"

    .prologue
    .line 926
    invoke-static {p0, p1}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getTextImageLayout(Landroid/content/Context;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)Landroid/text/StaticLayout;

    move-result-object v1

    .line 927
    .local v1, layout:Landroid/text/StaticLayout;
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 928
    .local v2, textBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 929
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v1, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 930
    return-object v2
.end method

.method private static drawTextImage(Landroid/text/StaticLayout;I)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "textLayout"
    .parameter "maxHeight"

    .prologue
    .line 974
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getHeight()I

    move-result v3

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 975
    .local v1, textBitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 976
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 977
    return-object v1
.end method

.method public static drawWallPaper(Landroid/content/Context;Landroid/graphics/Canvas;ILjava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "canvas"
    .parameter "contentWidth"
    .parameter "wallpaper"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1408
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v6

    invoke-virtual {v6}, Lzte/com/cn/cloudnotepad/NoteApp;->getStatusBarHeight()I

    move-result v3

    .line 1409
    .local v3, statusBarHeight:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080021

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1410
    .local v0, actionBarHeight:I
    add-int v2, v0, v3

    .line 1411
    .local v2, cutHeight:I
    invoke-static {p0, p3}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->setWallpaper(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1412
    .local v4, wall:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v6

    invoke-virtual {v6}, Lzte/com/cn/cloudnotepad/NoteApp;->getScreenHeight()I

    move-result v5

    .line 1413
    .local v5, windowHeight:I
    if-nez v4, :cond_0

    .line 1422
    :goto_0
    return-void

    .line 1416
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v9, v9, p2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1418
    .local v1, bounds:Landroid/graphics/Rect;
    neg-int v6, v2

    int-to-float v6, v6

    invoke-virtual {p1, v8, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1419
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1420
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1421
    int-to-float v6, v2

    invoke-virtual {p1, v8, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method public static getBitmapFromFile(Landroid/content/Context;Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "context"
    .parameter "file"

    .prologue
    const/4 v6, 0x1

    const v7, 0x7f020075

    .line 223
    const/4 v1, 0x0

    .line 224
    .local v1, bitmap:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 225
    .local v0, bfOptions:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 226
    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 227
    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 228
    const/4 v3, 0x0

    .line 230
    .local v3, fs:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #fs:Ljava/io/FileInputStream;
    .local v4, fs:Ljava/io/FileInputStream;
    move-object v3, v4

    .line 236
    .end local v4           #fs:Ljava/io/FileInputStream;
    .restart local v3       #fs:Ljava/io/FileInputStream;
    :goto_0
    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 240
    :cond_0
    if-eqz v3, :cond_1

    .line 242
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 247
    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 248
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 251
    :cond_2
    :goto_2
    return-object v1

    .line 231
    :catch_0
    move-exception v2

    .line 232
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 237
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 238
    .local v2, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 240
    if-eqz v3, :cond_3

    .line 242
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 247
    :cond_3
    :goto_3
    if-nez v1, :cond_2

    .line 248
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_2

    .line 243
    :catch_2
    move-exception v2

    .line 244
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 239
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 240
    if-eqz v3, :cond_4

    .line 242
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 247
    :cond_4
    :goto_4
    if-nez v1, :cond_5

    .line 248
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 250
    :cond_5
    throw v5

    .line 243
    :catch_3
    move-exception v2

    .line 244
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 243
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 244
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getBitmapListIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "mContext"
    .parameter "filePath"
    .parameter "fileName"

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz p2, :cond_0

    .line 172
    const-string v4, "record"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020060

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 189
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020071

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 192
    :cond_1
    return-object v0

    .line 175
    :cond_2
    invoke-static {p2}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->isPicture(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p1, :cond_3

    .line 176
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .local v3, thumbnailFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 178
    invoke-static {p0, v3}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getBitmapFromFile(Landroid/content/Context;Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 181
    .end local v3           #thumbnailFile:Ljava/io/File;
    :cond_3
    const/16 v4, 0x2e

    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 182
    .local v2, start:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 183
    sget-object v4, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 184
    .local v1, id:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    check-cast v1, Ljava/lang/Integer;

    .end local v1           #id:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static getContentDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "mContext"
    .parameter "filePath"
    .parameter "filename"

    .prologue
    .line 219
    invoke-static {p0, p1, p2}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getDrawableFromFileContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawableFromFileContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "context"
    .parameter "filePath"
    .parameter "filename"

    .prologue
    .line 206
    const/4 v1, 0x0

    .line 207
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 209
    invoke-static {p0, v2}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getBitmapFromFile(Landroid/content/Context;Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 210
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 211
    const/4 v3, 0x0

    .line 215
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v3

    .line 213
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object v3, v1

    .line 215
    goto :goto_0
.end method

.method public static getDrawableListIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "mContext"
    .parameter "filePath"
    .parameter "fileName"

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_0

    .line 141
    const-string v3, "record"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 142
    const-string v3, "ResourceUtils"

    const-string v4, "record"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020060

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 162
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020071

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 165
    :cond_1
    return-object v0

    .line 146
    :cond_2
    invoke-static {p2}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->isPicture(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p1, :cond_3

    .line 147
    invoke-static {p0, p1, p2}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getDrawableFromFileContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 154
    :cond_3
    const/16 v3, 0x2e

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 155
    .local v2, start:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 156
    sget-object v3, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->SuffixMap:Ljava/util/HashMap;

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 157
    .local v1, id:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    check-cast v1, Ljava/lang/Integer;

    .end local v1           #id:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLocationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "addressString"

    .prologue
    .line 1054
    if-eqz p0, :cond_5

    .line 1055
    const/4 v6, 0x0

    .line 1058
    .local v6, root:Lorg/json/JSONObject;
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1059
    .end local v6           #root:Lorg/json/JSONObject;
    .local v7, root:Lorg/json/JSONObject;
    :try_start_1
    const-string v8, "Route"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1060
    const-string v8, "Route"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1061
    .local v4, jsonRoute:Lorg/json/JSONObject;
    const-string v8, "Description"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "Description"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1062
    .local v1, descriptionString:Ljava/lang/String;
    :goto_0
    const/16 v8, 0xa

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 1063
    const/4 v8, 0x0

    const/16 v9, 0xa

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1079
    .end local v1           #descriptionString:Ljava/lang/String;
    .end local v4           #jsonRoute:Lorg/json/JSONObject;
    .end local v7           #root:Lorg/json/JSONObject;
    :cond_0
    :goto_1
    return-object v1

    .line 1061
    .restart local v4       #jsonRoute:Lorg/json/JSONObject;
    .restart local v7       #root:Lorg/json/JSONObject;
    :cond_1
    const-string v1, ""

    goto :goto_0

    .line 1066
    .end local v4           #jsonRoute:Lorg/json/JSONObject;
    :cond_2
    const-string v8, "Marker"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1067
    const-string v8, "Marker"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1068
    .local v3, jsonMarker:Lorg/json/JSONObject;
    const-string v8, "name"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "name"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1069
    .local v5, name:Ljava/lang/String;
    :goto_2
    const-string v8, "addr"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "addr"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1070
    .local v0, address:Ljava/lang/String;
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1068
    .end local v0           #address:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    :cond_3
    const-string v5, ""

    goto :goto_2

    .line 1069
    .restart local v5       #name:Ljava/lang/String;
    :cond_4
    const-string v0, ""
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 1072
    .end local v3           #jsonMarker:Lorg/json/JSONObject;
    .end local v5           #name:Ljava/lang/String;
    .end local v7           #root:Lorg/json/JSONObject;
    .restart local v6       #root:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 1075
    .local v2, e:Lorg/json/JSONException;
    :goto_4
    const-string v8, "ResourceUtils"

    const-string v9, "updateLocationDisplay JSONException"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    const-string v1, ""

    goto :goto_1

    .line 1079
    .end local v2           #e:Lorg/json/JSONException;
    .end local v6           #root:Lorg/json/JSONObject;
    :cond_5
    const-string v1, ""

    goto :goto_1

    .line 1072
    .restart local v7       #root:Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    move-object v6, v7

    .end local v7           #root:Lorg/json/JSONObject;
    .restart local v6       #root:Lorg/json/JSONObject;
    goto :goto_4
.end method

.method public static getNoteContentThumbnailHeight(Landroid/content/Context;)I
    .locals 10
    .parameter "context"

    .prologue
    .line 1257
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1258
    .local v3, preferences:Landroid/content/SharedPreferences;
    const-string v8, "ContentThumbnailHeight"

    const/4 v9, 0x0

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1259
    .local v5, thumbnailHeight:I
    if-lez v5, :cond_0

    move v6, v5

    .line 1271
    .end local v5           #thumbnailHeight:I
    .local v6, thumbnailHeight:I
    :goto_0
    return v6

    .line 1263
    .end local v6           #thumbnailHeight:I
    .restart local v5       #thumbnailHeight:I
    :cond_0
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v8

    invoke-virtual {v8}, Lzte/com/cn/cloudnotepad/NoteApp;->getScreenHeight()I

    move-result v7

    .line 1264
    .local v7, windowHeight:I
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v8

    invoke-virtual {v8}, Lzte/com/cn/cloudnotepad/NoteApp;->getStatusBarHeight()I

    move-result v4

    .line 1265
    .local v4, statusBarHeight:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080021

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1266
    .local v0, actionBarButtonHeight:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080025

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1267
    .local v1, actionBarTopHeight:I
    sub-int v8, v7, v4

    sub-int/2addr v8, v0

    sub-int v5, v8, v1

    .line 1268
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1269
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v8, "ContentThumbnailHeight"

    invoke-interface {v2, v8, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1270
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v6, v5

    .line 1271
    .end local v5           #thumbnailHeight:I
    .restart local v6       #thumbnailHeight:I
    goto :goto_0
.end method

.method private static getRes()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/NoteApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public static getShareIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .parameter "fileName"

    .prologue
    .line 1202
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1203
    .local v0, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 1204
    .local v2, type:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1205
    invoke-static {v0}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getMIMEType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 1207
    :cond_0
    const-string v3, "zhangxue"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "type="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1210
    .local v1, intent:Landroid/content/Intent;
    if-nez v2, :cond_1

    const-string v2, "application/octet-stream"

    .end local v2           #type:Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1211
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1212
    const-string v3, "android.intent.extra.STREAM"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1213
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1215
    return-object v1
.end method

.method private static getTextImageLayout(Landroid/content/Context;Ljava/lang/String;I)Landroid/text/StaticLayout;
    .locals 9
    .parameter "context"
    .parameter "content"
    .parameter "mold"

    .prologue
    const/4 v7, 0x1

    .line 955
    sget v3, Lzte/com/cn/cloudnotepad/NoteApp;->mTextViewWidth:I

    .line 957
    .local v3, textWidth:I
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    .line 958
    .local v2, textpaint:Landroid/text/TextPaint;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 959
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 960
    .local v8, mTextView:Landroid/widget/TextView;
    if-nez p2, :cond_0

    .line 961
    const v0, 0x1030044

    invoke-virtual {v8, p0, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 962
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 967
    .local v4, alignment:Landroid/text/Layout$Alignment;
    :goto_0
    invoke-virtual {v8}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 968
    invoke-virtual {v2, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 969
    new-instance v0, Landroid/text/StaticLayout;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0

    .line 964
    .end local v4           #alignment:Landroid/text/Layout$Alignment;
    :cond_0
    const v0, 0x1030046

    invoke-virtual {v8, p0, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 965
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .restart local v4       #alignment:Landroid/text/Layout$Alignment;
    goto :goto_0
.end method

.method private static getTextImageLayout(Landroid/content/Context;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)Landroid/text/StaticLayout;
    .locals 9
    .parameter "context"
    .parameter "controlData"

    .prologue
    const/4 v7, 0x1

    .line 934
    sget v3, Lzte/com/cn/cloudnotepad/NoteApp;->mTextViewWidth:I

    .line 935
    .local v3, textWidth:I
    const-string v0, "wangna"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "textWidth"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    .line 937
    .local v2, textpaint:Landroid/text/TextPaint;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 938
    new-instance v8, Landroid/widget/TextView;

    invoke-direct {v8, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 939
    .local v8, mTextView:Landroid/widget/TextView;
    const v0, 0x1030044

    invoke-virtual {v8, p0, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 940
    invoke-virtual {v8}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 941
    invoke-virtual {v2, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 942
    new-instance v0, Landroid/text/StaticLayout;

    new-instance v1, Ljava/lang/String;

    iget-object v4, p1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->content:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method public static getWallPaperThumbnailHeight(Landroid/content/Context;)I
    .locals 5
    .parameter "context"

    .prologue
    .line 367
    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getRes()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 368
    .local v0, bg_drawable:Landroid/graphics/drawable/Drawable;
    const-string v2, "ResourceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "wallpaper bg drawable width = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", drawable height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-static {p0}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getWallPaperThumbnailWidth(Landroid/content/Context;)I

    move-result v1

    .line 370
    .local v1, thumb_width:I
    const/high16 v2, 0x3f80

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    int-to-float v3, v1

    mul-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2
.end method

.method public static getWallPaperThumbnailWidth(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 360
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 361
    .local v0, metrics:Landroid/util/DisplayMetrics;
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 362
    const-string v1, "ResourceUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wallpaper, metrics.widthPixels = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const v2, 0x3e23d70a

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method public static isApkInstalled(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    .line 1425
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v3

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/NoteApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1429
    .local v2, mPm:Landroid/content/pm/PackageManager;
    const/16 v3, 0x2000

    .line 1428
    :try_start_0
    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1433
    .local v1, mAppInfo:Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-nez v1, :cond_0

    .line 1434
    const/4 v3, 0x0

    .line 1436
    :goto_1
    return v3

    .line 1430
    .end local v1           #mAppInfo:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 1431
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .restart local v1       #mAppInfo:Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 1436
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static isPicture(Ljava/lang/String;)Z
    .locals 2
    .parameter "fileName"

    .prologue
    .line 196
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, lowerFileName:Ljava/lang/String;
    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".bmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 198
    const-string v1, ".wbmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    :cond_0
    const/4 v1, 0x1

    .line 201
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static newMotionEvent(III)Landroid/view/MotionEvent;
    .locals 8
    .parameter "action"
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide/16 v0, 0x0

    .line 448
    int-to-float v5, p1

    int-to-float v6, p2

    const/4 v7, 0x0

    move-wide v2, v0

    move v4, p0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static resolveAddedFile(Ljava/io/File;Ljava/lang/String;Ljava/util/LinkedList;Ljava/util/LinkedList;)Ljava/lang/String;
    .locals 4
    .parameter "file"
    .parameter "fileNameString"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 375
    .local p2, mFileNameList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    .local p3, mAddFileNameList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    const-string v0, "0"

    .line 376
    .local v0, sizeString:Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v1, v0

    .line 386
    .end local v0           #sizeString:Ljava/lang/String;
    .local v1, sizeString:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 379
    .end local v1           #sizeString:Ljava/lang/String;
    .restart local v0       #sizeString:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 380
    invoke-static {p0}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getFileSizeString(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 382
    invoke-virtual {p3, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object v1, v0

    .line 386
    .end local v0           #sizeString:Ljava/lang/String;
    .restart local v1       #sizeString:Ljava/lang/String;
    goto :goto_0
.end method

.method public static saveLocationMap(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "mapScreenshotFile"

    .prologue
    .line 1248
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "location_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1250
    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1248
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1252
    .local v0, mapFileName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getLocationStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->renameTo(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1253
    return-object v0
.end method

.method public static saveResource(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "fileName"

    .prologue
    .line 1233
    const/4 v1, 0x0

    .line 1235
    .local v1, intent:Landroid/content/Intent;
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "zte.com.cn.filer.download.settings"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1236
    .end local v1           #intent:Landroid/content/Intent;
    .local v2, intent:Landroid/content/Intent;
    :try_start_1
    const-string v3, "filename"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1237
    const-string v3, "filepath"

    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v4

    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/NoteApp;->getSavePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1238
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 1245
    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1239
    :catch_0
    move-exception v0

    .line 1240
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v3, "cloudnotepad.saveas"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1241
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v3, "filename"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1242
    const-string v3, "filepath"

    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v4

    invoke-virtual {v4}, Lzte/com/cn/cloudnotepad/NoteApp;->getSavePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1243
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1239
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_1
.end method

.method public static setViewFocusState(Landroid/content/Context;ILjava/lang/Boolean;Z)V
    .locals 7
    .parameter "context"
    .parameter "index"
    .parameter "isLeft"
    .parameter "enabled"

    .prologue
    const/4 v6, 0x1

    .line 407
    const/4 v0, 0x0

    .line 408
    .local v0, editView:Landroid/widget/EditText;
    const-string v3, "ResourceUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isLeft="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/4 v3, -0x1

    if-ne p1, v3, :cond_2

    move-object v3, p0

    .line 410
    check-cast v3, Landroid/app/Activity;

    const v4, 0x7f06001b

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #editView:Landroid/widget/EditText;
    check-cast v0, Landroid/widget/EditText;

    .line 425
    .restart local v0       #editView:Landroid/widget/EditText;
    :cond_0
    :goto_0
    if-nez v0, :cond_5

    .line 438
    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v3, p0

    .line 412
    check-cast v3, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getResourceLayout()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 414
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_4

    .line 415
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 416
    check-cast v2, Landroid/widget/LinearLayout;

    .end local v2           #view:Landroid/view/View;
    const-string v3, "leftedittext"

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .end local v0           #editView:Landroid/widget/EditText;
    check-cast v0, Landroid/widget/EditText;

    .restart local v0       #editView:Landroid/widget/EditText;
    goto :goto_0

    .line 418
    .restart local v2       #view:Landroid/view/View;
    :cond_3
    check-cast v2, Landroid/widget/LinearLayout;

    .end local v2           #view:Landroid/view/View;
    const-string v3, "rightedittext"

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .end local v0           #editView:Landroid/widget/EditText;
    check-cast v0, Landroid/widget/EditText;

    .restart local v0       #editView:Landroid/widget/EditText;
    goto :goto_0

    .line 420
    .restart local v2       #view:Landroid/view/View;
    :cond_4
    instance-of v3, v2, Landroid/widget/EditText;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 421
    check-cast v0, Landroid/widget/EditText;

    goto :goto_0

    .line 428
    .end local v2           #view:Landroid/view/View;
    :cond_5
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 429
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 430
    if-eqz p3, :cond_6

    .line 431
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 433
    :cond_6
    if-eqz p3, :cond_1

    .line 434
    const-string v3, "input_method"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 435
    .local v1, manager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1, v0, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_1
.end method

.method public static setWallpaper(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "mContext"
    .parameter "wallpaper"

    .prologue
    .line 257
    const/4 v0, 0x0

    .line 259
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    :try_start_0
    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 260
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x106000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 279
    :goto_0
    return-object v0

    .line 261
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_4

    .line 262
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 263
    .local v3, paperId:I
    const/4 v5, 0x1

    if-lt v3, v5, :cond_2

    sget-object v5, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->Predefined_Wallpaper_ResIds:[I

    array-length v5, v5

    if-le v3, v5, :cond_3

    .line 264
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x106000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 266
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget-object v6, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->Wallpaper_ResIds:[I

    add-int/lit8 v7, v3, -0x1

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 269
    .end local v3           #paperId:I
    :cond_4
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getWallPaperStoragePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 271
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    move-object v0, v1

    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 273
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x106000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 276
    .end local v2           #file:Ljava/io/File;
    :catch_0
    move-exception v4

    .line 277
    .local v4, tr:Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static shareObject(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "fileName"

    .prologue
    .line 1219
    const-string v3, "com.zte.snsshare"

    invoke-static {v3}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->isApkInstalled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1220
    const-string v3, "jpg"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "gif"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "png"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1221
    const-string v3, "jpeg"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "bmp"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1222
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/utils/FileUtils;->getResourceStoragePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->startSnsShareActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 1230
    :goto_0
    return-void

    .line 1224
    :cond_1
    invoke-static {p1}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->getShareIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1226
    .local v2, shareIntent:Landroid/content/Intent;
    const v3, 0x7f090038

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1227
    .local v1, chooseTitle:Ljava/lang/CharSequence;
    invoke-static {v2, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 1228
    .local v0, chooseIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static startSnsShareActivity(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "imagePath"

    .prologue
    const/4 v4, 0x1

    .line 1144
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1145
    .local v1, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 1146
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1147
    .local v0, file:Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 1148
    .local v2, uri:Landroid/net/Uri;
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1150
    .end local v0           #file:Ljava/io/File;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    const-string v3, "show_other"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1151
    const-string v3, "com.zte.snsshare"

    const-string v4, "com.zte.snsshare.SnsUpdateStatusActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1152
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1153
    return-void
.end method

.method public static takeMapShot(Landroid/app/Activity;I)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "activity"
    .parameter "y"

    .prologue
    .line 312
    const-string v11, "ResourceUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "y="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    .line 314
    .local v9, view:Landroid/view/View;
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 315
    invoke-virtual {v9}, Landroid/view/View;->buildDrawingCache()V

    .line 316
    invoke-virtual {v9}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 319
    .local v6, screen:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 320
    .local v2, frame:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 321
    iget v8, v2, Landroid/graphics/Rect;->top:I

    .line 322
    .local v8, statusBarHeight:I
    const-string v11, "TAG"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "statusBarHeight="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    .line 326
    .local v4, mActionBar:Landroid/app/ActionBar;
    invoke-virtual {v4}, Landroid/app/ActionBar;->getHeight()I

    move-result v0

    .line 329
    .local v0, actionBarHeight:I
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Display;->getWidth()I

    move-result v10

    .line 330
    .local v10, width:I
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 332
    .local v3, height:I
    add-int v11, v8, v0

    sget v12, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->MAP_SHOT_TEXT_HEIGHT:I

    add-int v5, v11, v12

    .line 333
    .local v5, mapViewY:I
    const-string v11, "ResourceUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "mapViewY="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v11, "ResourceUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "height="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    if-ltz p1, :cond_0

    sub-int v11, v3, v5

    if-le p1, v11, :cond_1

    .line 337
    :cond_0
    sub-int v11, v3, v5

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v5

    add-int/lit16 v7, v11, -0x96

    .line 350
    .local v7, shotY:I
    :goto_0
    const/16 v11, 0xa

    add-int/lit8 v12, v10, -0x14

    const/16 v13, 0x12c

    invoke-static {v6, v11, v7, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 351
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 352
    const/4 v6, 0x0

    .line 353
    invoke-virtual {v9}, Landroid/view/View;->destroyDrawingCache()V

    .line 354
    return-object v1

    .line 338
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #shotY:I
    :cond_1
    sub-int v11, p1, v5

    const/16 v12, 0x96

    if-ge v11, v12, :cond_2

    .line 339
    const-string v11, "ResourceUtils"

    const-string v12, "(y-mapViewY)<MAP_SHOT_HEIGHT/2"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    move v7, v5

    .restart local v7       #shotY:I
    goto :goto_0

    .line 341
    .end local v7           #shotY:I
    :cond_2
    sub-int v11, v3, v5

    sub-int/2addr v11, p1

    const/16 v12, 0x96

    if-ge v11, v12, :cond_3

    .line 342
    const-string v11, "ResourceUtils"

    const-string v12, "(height-y)<MAP_SHOT_HEIGHT/2"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    add-int/lit16 v7, v3, -0x12c

    .restart local v7       #shotY:I
    goto :goto_0

    .line 345
    .end local v7           #shotY:I
    :cond_3
    const-string v11, "ResourceUtils"

    const-string v12, "else"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    add-int/lit16 v11, p1, -0x96

    add-int v7, v11, v5

    .restart local v7       #shotY:I
    goto :goto_0
.end method
