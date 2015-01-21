.class public Ltmsdk/common/utils/Base64;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdk/common/utils/Base64$c;,
        Ltmsdk/common/utils/Base64$b;,
        Ltmsdk/common/utils/Base64$a;
    }
.end annotation


# static fields
.field public static final CRLF:I = 0x4

.field public static final DEFAULT:I = 0x0

#the value of this static final field might be set in the static constructor
.field static final synthetic N:Z = false

.field public static final NO_CLOSE:I = 0x10

.field public static final NO_PADDING:I = 0x1

.field public static final NO_WRAP:I = 0x2

.field public static final URL_SAFE:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Ltmsdk/common/utils/Base64;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ltmsdk/common/utils/Base64;->N:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;I)[B
    .locals 1
    .parameter "str"
    .parameter "flags"

    .prologue
    .line 118
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Ltmsdk/common/utils/Base64;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BI)[B
    .locals 2
    .parameter "input"
    .parameter "flags"

    .prologue
    .line 136
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Ltmsdk/common/utils/Base64;->decode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BIII)[B
    .locals 5
    .parameter "input"
    .parameter "offset"
    .parameter "len"
    .parameter "flags"

    .prologue
    const/4 v4, 0x0

    .line 158
    new-instance v0, Ltmsdk/common/utils/Base64$b;

    mul-int/lit8 v2, p2, 0x3

    div-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    invoke-direct {v0, p3, v2}, Ltmsdk/common/utils/Base64$b;-><init>(I[B)V

    .line 160
    .local v0, decoder:Ltmsdk/common/utils/Base64$b;
    const/4 v2, 0x1

    invoke-virtual {v0, p0, p1, p2, v2}, Ltmsdk/common/utils/Base64$b;->a([BIIZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 161
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "bad base-64"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 165
    :cond_0
    iget v2, v0, Ltmsdk/common/utils/Base64$b;->DK:I

    iget-object v3, v0, Ltmsdk/common/utils/Base64$b;->DJ:[B

    array-length v3, v3

    if-ne v2, v3, :cond_1

    .line 166
    iget-object v1, v0, Ltmsdk/common/utils/Base64$b;->DJ:[B

    .line 173
    :goto_0
    return-object v1

    .line 171
    :cond_1
    iget v2, v0, Ltmsdk/common/utils/Base64$b;->DK:I

    new-array v1, v2, [B

    .line 172
    .local v1, temp:[B
    iget-object v2, v0, Ltmsdk/common/utils/Base64$b;->DJ:[B

    iget v3, v0, Ltmsdk/common/utils/Base64$b;->DK:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static encode([BI)[B
    .locals 2
    .parameter "input"
    .parameter "flags"

    .prologue
    .line 494
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Ltmsdk/common/utils/Base64;->encode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([BIII)[B
    .locals 5
    .parameter "input"
    .parameter "offset"
    .parameter "len"
    .parameter "flags"

    .prologue
    const/4 v3, 0x1

    .line 510
    new-instance v0, Ltmsdk/common/utils/Base64$c;

    const/4 v2, 0x0

    invoke-direct {v0, p3, v2}, Ltmsdk/common/utils/Base64$c;-><init>(I[B)V

    .line 513
    .local v0, encoder:Ltmsdk/common/utils/Base64$c;
    div-int/lit8 v2, p2, 0x3

    mul-int/lit8 v1, v2, 0x4

    .line 516
    .local v1, output_len:I
    iget-boolean v2, v0, Ltmsdk/common/utils/Base64$c;->DS:Z

    if-eqz v2, :cond_2

    .line 517
    rem-int/lit8 v2, p2, 0x3

    if-lez v2, :cond_0

    .line 518
    add-int/lit8 v1, v1, 0x4

    .line 529
    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v2, v0, Ltmsdk/common/utils/Base64$c;->DT:Z

    if-eqz v2, :cond_1

    if-lez p2, :cond_1

    .line 530
    add-int/lit8 v2, p2, -0x1

    div-int/lit8 v2, v2, 0x39

    add-int/lit8 v4, v2, 0x1

    iget-boolean v2, v0, Ltmsdk/common/utils/Base64$c;->DU:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    :goto_1
    mul-int/2addr v2, v4

    add-int/2addr v1, v2

    .line 534
    :cond_1
    new-array v2, v1, [B

    iput-object v2, v0, Ltmsdk/common/utils/Base64$c;->DJ:[B

    .line 535
    invoke-virtual {v0, p0, p1, p2, v3}, Ltmsdk/common/utils/Base64$c;->a([BIIZ)Z

    .line 537
    sget-boolean v2, Ltmsdk/common/utils/Base64;->N:Z

    if-nez v2, :cond_4

    iget v2, v0, Ltmsdk/common/utils/Base64$c;->DK:I

    if-eq v2, v1, :cond_4

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 521
    :cond_2
    rem-int/lit8 v2, p2, 0x3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 523
    :pswitch_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 524
    :pswitch_2
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_3
    move v2, v3

    .line 530
    goto :goto_1

    .line 539
    :cond_4
    iget-object v2, v0, Ltmsdk/common/utils/Base64$c;->DJ:[B

    return-object v2

    .line 521
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static encodeToString([BI)Ljava/lang/String;
    .locals 4
    .parameter "input"
    .parameter "flags"

    .prologue
    .line 456
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p0, p1}, Ltmsdk/common/utils/Base64;->encode([BI)[B

    move-result-object v2

    const-string v3, "US-ASCII"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 457
    :catch_0
    move-exception v0

    .line 459
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static encodeToString([BIII)Ljava/lang/String;
    .locals 4
    .parameter "input"
    .parameter "offset"
    .parameter "len"
    .parameter "flags"

    .prologue
    .line 477
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Ltmsdk/common/utils/Base64;->encode([BIII)[B

    move-result-object v2

    const-string v3, "US-ASCII"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 478
    :catch_0
    move-exception v0

    .line 480
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
