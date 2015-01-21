.class public final Lff;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lff;

.field public static final b:Lff;

.field public static final c:Lff;

.field public static final d:Lff;

.field public static final e:Lff;

.field public static final f:Lff;

.field public static final g:Lff;

.field public static final h:Lff;

.field public static final i:Lff;


# instance fields
.field private final a:I

.field private final a:Ljava/lang/String;

.field private final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 29
    new-instance v0, Lff;

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    const-string v3, "TERMINATOR"

    invoke-direct {v0, v1, v2, v3}, Lff;-><init>([IILjava/lang/String;)V

    sput-object v0, Lff;->a:Lff;

    .line 30
    new-instance v0, Lff;

    new-array v1, v4, [I

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    const-string v3, "NUMERIC"

    invoke-direct {v0, v1, v2, v3}, Lff;-><init>([IILjava/lang/String;)V

    sput-object v0, Lff;->b:Lff;

    .line 31
    new-instance v0, Lff;

    new-array v1, v4, [I

    fill-array-data v1, :array_2

    const/4 v2, 0x2

    const-string v3, "ALPHANUMERIC"

    invoke-direct {v0, v1, v2, v3}, Lff;-><init>([IILjava/lang/String;)V

    sput-object v0, Lff;->c:Lff;

    .line 32
    new-instance v0, Lff;

    new-array v1, v4, [I

    fill-array-data v1, :array_3

    const-string v2, "STRUCTURED_APPEND"

    invoke-direct {v0, v1, v4, v2}, Lff;-><init>([IILjava/lang/String;)V

    sput-object v0, Lff;->d:Lff;

    .line 33
    new-instance v0, Lff;

    new-array v1, v4, [I

    fill-array-data v1, :array_4

    const/4 v2, 0x4

    const-string v3, "BYTE"

    invoke-direct {v0, v1, v2, v3}, Lff;-><init>([IILjava/lang/String;)V

    sput-object v0, Lff;->e:Lff;

    .line 34
    new-instance v0, Lff;

    const/4 v1, 0x7

    const-string v2, "ECI"

    invoke-direct {v0, v5, v1, v2}, Lff;-><init>([IILjava/lang/String;)V

    sput-object v0, Lff;->f:Lff;

    .line 35
    new-instance v0, Lff;

    new-array v1, v4, [I

    fill-array-data v1, :array_5

    const/16 v2, 0x8

    const-string v3, "KANJI"

    invoke-direct {v0, v1, v2, v3}, Lff;-><init>([IILjava/lang/String;)V

    sput-object v0, Lff;->g:Lff;

    .line 36
    new-instance v0, Lff;

    const/4 v1, 0x5

    const-string v2, "FNC1_FIRST_POSITION"

    invoke-direct {v0, v5, v1, v2}, Lff;-><init>([IILjava/lang/String;)V

    sput-object v0, Lff;->h:Lff;

    .line 37
    new-instance v0, Lff;

    const/16 v1, 0x9

    const-string v2, "FNC1_SECOND_POSITION"

    invoke-direct {v0, v5, v1, v2}, Lff;-><init>([IILjava/lang/String;)V

    sput-object v0, Lff;->i:Lff;

    return-void

    .line 29
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 30
    :array_1
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    .line 31
    :array_2
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    .line 32
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 33
    :array_4
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 35
    :array_5
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>([IILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lff;->a:[I

    .line 45
    iput p2, p0, Lff;->a:I

    .line 46
    iput-object p3, p0, Lff;->a:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static a(I)Lff;
    .locals 1
    .parameter

    .prologue
    .line 55
    packed-switch p0, :pswitch_data_0

    .line 75
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 57
    :pswitch_1
    sget-object v0, Lff;->a:Lff;

    .line 73
    :goto_0
    return-object v0

    .line 59
    :pswitch_2
    sget-object v0, Lff;->b:Lff;

    goto :goto_0

    .line 61
    :pswitch_3
    sget-object v0, Lff;->c:Lff;

    goto :goto_0

    .line 63
    :pswitch_4
    sget-object v0, Lff;->d:Lff;

    goto :goto_0

    .line 65
    :pswitch_5
    sget-object v0, Lff;->e:Lff;

    goto :goto_0

    .line 67
    :pswitch_6
    sget-object v0, Lff;->h:Lff;

    goto :goto_0

    .line 69
    :pswitch_7
    sget-object v0, Lff;->f:Lff;

    goto :goto_0

    .line 71
    :pswitch_8
    sget-object v0, Lff;->g:Lff;

    goto :goto_0

    .line 73
    :pswitch_9
    sget-object v0, Lff;->i:Lff;

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lff;->a:I

    return v0
.end method

.method public a(Lfg;)I
    .locals 2
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lff;->a:[I

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Character count doesn\'t apply to this mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    invoke-virtual {p1}, Lfg;->a()I

    move-result v0

    .line 90
    const/16 v1, 0x9

    if-gt v0, v1, :cond_1

    .line 91
    const/4 v0, 0x0

    .line 97
    :goto_0
    iget-object v1, p0, Lff;->a:[I

    aget v0, v1, v0

    return v0

    .line 92
    :cond_1
    const/16 v1, 0x1a

    if-gt v0, v1, :cond_2

    .line 93
    const/4 v0, 0x1

    goto :goto_0

    .line 95
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lff;->a:Ljava/lang/String;

    return-object v0
.end method
