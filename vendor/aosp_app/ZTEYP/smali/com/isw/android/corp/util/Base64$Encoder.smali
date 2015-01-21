.class Lcom/isw/android/corp/util/Base64$Encoder;
.super Lcom/isw/android/corp/util/Base64$Coder;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isw/android/corp/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Encoder"
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ENCODE:[B = null

.field private static final ENCODE_WEBSAFE:[B = null

.field public static final LINE_GROUPS:I = 0x13


# instance fields
.field private final alphabet:[B

.field private count:I

.field public final do_cr:Z

.field public final do_newline:Z

.field public final do_padding:Z

.field private final tail:[B

.field tailLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x40

    .line 570
    const-class v0, Lcom/isw/android/corp/util/Base64;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/isw/android/corp/util/Base64$Encoder;->$assertionsDisabled:Z

    .line 582
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/isw/android/corp/util/Base64$Encoder;->ENCODE:[B

    .line 593
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/isw/android/corp/util/Base64$Encoder;->ENCODE_WEBSAFE:[B

    .line 598
    return-void

    .line 570
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 582
    :array_0
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 593
    :array_1
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>(I[B)V
    .locals 3
    .parameter "flags"
    .parameter "output"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 610
    invoke-direct {p0}, Lcom/isw/android/corp/util/Base64$Coder;-><init>()V

    .line 611
    iput-object p2, p0, Lcom/isw/android/corp/util/Base64$Encoder;->output:[B

    .line 613
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/isw/android/corp/util/Base64$Encoder;->do_padding:Z

    .line 614
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/isw/android/corp/util/Base64$Encoder;->do_newline:Z

    .line 615
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/isw/android/corp/util/Base64$Encoder;->do_cr:Z

    .line 616
    and-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_3

    sget-object v0, Lcom/isw/android/corp/util/Base64$Encoder;->ENCODE:[B

    :goto_3
    iput-object v0, p0, Lcom/isw/android/corp/util/Base64$Encoder;->alphabet:[B

    .line 618
    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/isw/android/corp/util/Base64$Encoder;->tail:[B

    .line 619
    iput v2, p0, Lcom/isw/android/corp/util/Base64$Encoder;->tailLen:I

    .line 621
    iget-boolean v0, p0, Lcom/isw/android/corp/util/Base64$Encoder;->do_newline:Z

    if-eqz v0, :cond_4

    const/16 v0, 0x13

    :goto_4
    iput v0, p0, Lcom/isw/android/corp/util/Base64$Encoder;->count:I

    .line 622
    return-void

    :cond_0
    move v0, v2

    .line 613
    goto :goto_0

    :cond_1
    move v0, v2

    .line 614
    goto :goto_1

    :cond_2
    move v1, v2

    .line 615
    goto :goto_2

    .line 616
    :cond_3
    sget-object v0, Lcom/isw/android/corp/util/Base64$Encoder;->ENCODE_WEBSAFE:[B

    goto :goto_3

    .line 621
    :cond_4
    const/4 v0, -0x1

    goto :goto_4
.end method


# virtual methods
.method public maxOutputSize(I)I
    .locals 1
    .parameter "len"

    .prologue
    .line 629
    mul-int/lit8 v0, p1, 0x8

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public process([BIIZ)Z
    .locals 14
    .parameter "input"
    .parameter "offset"
    .parameter "len"
    .parameter "finish"

    .prologue
    .line 634
    iget-object v1, p0, Lcom/isw/android/corp/util/Base64$Encoder;->alphabet:[B

    .line 635
    .local v1, alphabet:[B
    iget-object v5, p0, Lcom/isw/android/corp/util/Base64$Encoder;->output:[B

    .line 636
    .local v5, output:[B
    const/4 v3, 0x0

    .line 637
    .local v3, op:I
    iget v2, p0, Lcom/isw/android/corp/util/Base64$Encoder;->count:I

    .line 639
    .local v2, count:I
    move/from16 v6, p2

    .line 640
    .local v6, p:I
    add-int p3, p3, p2

    .line 641
    const/4 v10, -0x1

    .line 647
    .local v10, v:I
    iget v11, p0, Lcom/isw/android/corp/util/Base64$Encoder;->tailLen:I

    packed-switch v11, :pswitch_data_0

    .line 675
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v11, -0x1

    if-eq v10, v11, :cond_15

    .line 676
    add-int/lit8 v4, v3, 0x1

    .end local v3           #op:I
    .local v4, op:I
    shr-int/lit8 v11, v10, 0x12

    and-int/lit8 v11, v11, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v3

    .line 677
    add-int/lit8 v3, v4, 0x1

    .end local v4           #op:I
    .restart local v3       #op:I
    shr-int/lit8 v11, v10, 0xc

    and-int/lit8 v11, v11, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v4

    .line 678
    add-int/lit8 v4, v3, 0x1

    .end local v3           #op:I
    .restart local v4       #op:I
    shr-int/lit8 v11, v10, 0x6

    and-int/lit8 v11, v11, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v3

    .line 679
    add-int/lit8 v3, v4, 0x1

    .end local v4           #op:I
    .restart local v3       #op:I
    and-int/lit8 v11, v10, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v4

    .line 680
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_15

    .line 681
    iget-boolean v11, p0, Lcom/isw/android/corp/util/Base64$Encoder;->do_cr:Z

    if-eqz v11, :cond_1

    add-int/lit8 v4, v3, 0x1

    .end local v3           #op:I
    .restart local v4       #op:I
    const/16 v11, 0xd

    aput-byte v11, v5, v3

    move v3, v4

    .line 682
    .end local v4           #op:I
    .restart local v3       #op:I
    :cond_1
    add-int/lit8 v4, v3, 0x1

    .end local v3           #op:I
    .restart local v4       #op:I
    const/16 v11, 0xa

    aput-byte v11, v5, v3

    .line 683
    const/16 v2, 0x13

    move v7, v6

    .line 692
    .end local v6           #p:I
    .local v7, p:I
    :goto_1
    add-int/lit8 v11, v7, 0x3

    move/from16 v0, p3

    if-le v11, v0, :cond_5

    .line 709
    if-eqz p4, :cond_10

    .line 715
    iget v11, p0, Lcom/isw/android/corp/util/Base64$Encoder;->tailLen:I

    sub-int v11, v7, v11

    add-int/lit8 v12, p3, -0x1

    if-ne v11, v12, :cond_8

    .line 716
    const/4 v8, 0x0

    .line 717
    .local v8, t:I
    iget v11, p0, Lcom/isw/android/corp/util/Base64$Encoder;->tailLen:I

    if-lez v11, :cond_7

    iget-object v11, p0, Lcom/isw/android/corp/util/Base64$Encoder;->tail:[B

    add-int/lit8 v9, v8, 0x1

    .end local v8           #t:I
    .local v9, t:I
    aget-byte v11, v11, v8

    move v8, v9

    .end local v9           #t:I
    .restart local v8       #t:I
    move v6, v7

    .end local v7           #p:I
    .restart local v6       #p:I
    :goto_2
    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v10, v11, 0x4

    .line 718
    iget v11, p0, Lcom/isw/android/corp/util/Base64$Encoder;->tailLen:I

    sub-int/2addr v11, v8

    iput v11, p0, Lcom/isw/android/corp/util/Base64$Encoder;->tailLen:I

    .line 719
    add-int/lit8 v3, v4, 0x1

    .end local v4           #op:I
    .restart local v3       #op:I
    shr-int/lit8 v11, v10, 0x6

    and-int/lit8 v11, v11, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v4

    .line 720
    add-int/lit8 v4, v3, 0x1

    .end local v3           #op:I
    .restart local v4       #op:I
    and-int/lit8 v11, v10, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v3

    .line 721
    iget-boolean v11, p0, Lcom/isw/android/corp/util/Base64$Encoder;->do_padding:Z

    if-eqz v11, :cond_2

    .line 722
    add-int/lit8 v3, v4, 0x1

    .end local v4           #op:I
    .restart local v3       #op:I
    const/16 v11, 0x3d

    aput-byte v11, v5, v4

    .line 723
    add-int/lit8 v4, v3, 0x1

    .end local v3           #op:I
    .restart local v4       #op:I
    const/16 v11, 0x3d

    aput-byte v11, v5, v3

    :cond_2
    move v3, v4

    .line 725
    .end local v4           #op:I
    .restart local v3       #op:I
    iget-boolean v11, p0, Lcom/isw/android/corp/util/Base64$Encoder;->do_newline:Z

    if-eqz v11, :cond_4

    .line 726
    iget-boolean v11, p0, Lcom/isw/android/corp/util/Base64$Encoder;->do_cr:Z

    if-eqz v11, :cond_3

    add-int/lit8 v4, v3, 0x1

    .end local v3           #op:I
    .restart local v4       #op:I
    const/16 v11, 0xd

    aput-byte v11, v5, v3

    move v3, v4

    .line 727
    .end local v4           #op:I
    .restart local v3       #op:I
    :cond_3
    add-int/lit8 v4, v3, 0x1

    .end local v3           #op:I
    .restart local v4       #op:I
    const/16 v11, 0xa

    aput-byte v11, v5, v3

    move v3, v4

    .line 749
    .end local v4           #op:I
    .end local v8           #t:I
    .restart local v3       #op:I
    :cond_4
    :goto_3
    sget-boolean v11, Lcom/isw/android/corp/util/Base64$Encoder;->$assertionsDisabled:Z

    if-nez v11, :cond_f

    iget v11, p0, Lcom/isw/android/corp/util/Base64$Encoder;->tailLen:I

    if-eqz v11, :cond_f

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 653
    :pswitch_1
    add-int/lit8 v11, v6, 0x2

    move/from16 v0, p3

    if-gt v11, v0, :cond_0

    .line 656
    iget-object v11, p0, Lcom/isw/android/corp/util/Base64$Encoder;->tail:[B

    const/4 v12, 0x0

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    .line 657
    add-int/lit8 v7, v6, 0x1

    .end local v6           #p:I
    .restart local v7       #p:I
    aget-byte v12, p1, v6

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    .line 656
    or-int/2addr v11, v12

    .line 658
    add-int/lit8 v6, v7, 0x1

    .end local v7           #p:I
    .restart local v6       #p:I
    aget-byte v12, p1, v7

    and-int/lit16 v12, v12, 0xff

    .line 656
    or-int v10, v11, v12

    .line 659
    const/4 v11, 0x0

    iput v11, p0, Lcom/isw/android/corp/util/Base64$Encoder;->tailLen:I

    goto/16 :goto_0

    .line 665
    :pswitch_2
    add-int/lit8 v11, v6, 0x1

    move/from16 v0, p3

    if-gt v11, v0, :cond_0

    .line 667
    iget-object v11, p0, Lcom/isw/android/corp/util/Base64$Encoder;->tail:[B

    const/4 v12, 0x0

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    .line 668
    iget-object v12, p0, Lcom/isw/android/corp/util/Base64$Encoder;->tail:[B

    const/4 v13, 0x1

    aget-byte v12, v12, v13

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    .line 667
    or-int/2addr v11, v12

    .line 669
    add-int/lit8 v7, v6, 0x1

    .end local v6           #p:I
    .restart local v7       #p:I
    aget-byte v12, p1, v6

    and-int/lit16 v12, v12, 0xff

    .line 667
    or-int v10, v11, v12

    .line 670
    const/4 v11, 0x0

    iput v11, p0, Lcom/isw/android/corp/util/Base64$Encoder;->tailLen:I

    move v6, v7

    .end local v7           #p:I
    .restart local v6       #p:I
    goto/16 :goto_0

    .line 693
    .end local v3           #op:I
    .end local v6           #p:I
    .restart local v4       #op:I
    .restart local v7       #p:I
    :cond_5
    aget-byte v11, p1, v7

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    .line 694
    add-int/lit8 v12, v7, 0x1

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    .line 693
    or-int/2addr v11, v12

    .line 695
    add-int/lit8 v12, v7, 0x2

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    .line 693
    or-int v10, v11, v12

    .line 696
    shr-int/lit8 v11, v10, 0x12

    and-int/lit8 v11, v11, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v4

    .line 697
    add-int/lit8 v11, v4, 0x1

    shr-int/lit8 v12, v10, 0xc

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v5, v11

    .line 698
    add-int/lit8 v11, v4, 0x2

    shr-int/lit8 v12, v10, 0x6

    and-int/lit8 v12, v12, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v5, v11

    .line 699
    add-int/lit8 v11, v4, 0x3

    and-int/lit8 v12, v10, 0x3f

    aget-byte v12, v1, v12

    aput-byte v12, v5, v11

    .line 700
    add-int/lit8 v6, v7, 0x3

    .line 701
    .end local v7           #p:I
    .restart local v6       #p:I
    add-int/lit8 v3, v4, 0x4

    .line 702
    .end local v4           #op:I
    .restart local v3       #op:I
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_15

    .line 703
    iget-boolean v11, p0, Lcom/isw/android/corp/util/Base64$Encoder;->do_cr:Z

    if-eqz v11, :cond_6

    add-int/lit8 v4, v3, 0x1

    .end local v3           #op:I
    .restart local v4       #op:I
    const/16 v11, 0xd

    aput-byte v11, v5, v3

    move v3, v4

    .line 704
    .end local v4           #op:I
    .restart local v3       #op:I
    :cond_6
    add-int/lit8 v4, v3, 0x1

    .end local v3           #op:I
    .restart local v4       #op:I
    const/16 v11, 0xa

    aput-byte v11, v5, v3

    .line 705
    const/16 v2, 0x13

    move v7, v6

    .end local v6           #p:I
    .restart local v7       #p:I
    goto/16 :goto_1

    .line 717
    .restart local v8       #t:I
    :cond_7
    add-int/lit8 v6, v7, 0x1

    .end local v7           #p:I
    .restart local v6       #p:I
    aget-byte v11, p1, v7

    goto/16 :goto_2

    .line 729
    .end local v6           #p:I
    .end local v8           #t:I
    .restart local v7       #p:I
    :cond_8
    iget v11, p0, Lcom/isw/android/corp/util/Base64$Encoder;->tailLen:I

    sub-int v11, v7, v11

    add-int/lit8 v12, p3, -0x2

    if-ne v11, v12, :cond_d

    .line 730
    const/4 v8, 0x0

    .line 731
    .restart local v8       #t:I
    iget v11, p0, Lcom/isw/android/corp/util/Base64$Encoder;->tailLen:I

    const/4 v12, 0x1

    if-le v11, v12, :cond_b

    iget-object v11, p0, Lcom/isw/android/corp/util/Base64$Encoder;->tail:[B

    add-int/lit8 v9, v8, 0x1

    .end local v8           #t:I
    .restart local v9       #t:I
    aget-byte v11, v11, v8

    move v8, v9

    .end local v9           #t:I
    .restart local v8       #t:I
    move v6, v7

    .end local v7           #p:I
    .restart local v6       #p:I
    :goto_4
    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v12, v11, 0xa

    .line 732
    iget v11, p0, Lcom/isw/android/corp/util/Base64$Encoder;->tailLen:I

    if-lez v11, :cond_c

    iget-object v11, p0, Lcom/isw/android/corp/util/Base64$Encoder;->tail:[B

    add-int/lit8 v9, v8, 0x1

    .end local v8           #t:I
    .restart local v9       #t:I
    aget-byte v11, v11, v8

    move v8, v9

    .end local v9           #t:I
    .restart local v8       #t:I
    :goto_5
    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x2

    .line 731
    or-int v10, v12, v11

    .line 733
    iget v11, p0, Lcom/isw/android/corp/util/Base64$Encoder;->tailLen:I

    sub-int/2addr v11, v8

    iput v11, p0, Lcom/isw/android/corp/util/Base64$Encoder;->tailLen:I

    .line 734
    add-int/lit8 v3, v4, 0x1

    .end local v4           #op:I
    .restart local v3       #op:I
    shr-int/lit8 v11, v10, 0xc

    and-int/lit8 v11, v11, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v4

    .line 735
    add-int/lit8 v4, v3, 0x1

    .end local v3           #op:I
    .restart local v4       #op:I
    shr-int/lit8 v11, v10, 0x6

    and-int/lit8 v11, v11, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v3

    .line 736
    add-int/lit8 v3, v4, 0x1

    .end local v4           #op:I
    .restart local v3       #op:I
    and-int/lit8 v11, v10, 0x3f

    aget-byte v11, v1, v11

    aput-byte v11, v5, v4

    .line 737
    iget-boolean v11, p0, Lcom/isw/android/corp/util/Base64$Encoder;->do_padding:Z

    if-eqz v11, :cond_9

    .line 738
    add-int/lit8 v4, v3, 0x1

    .end local v3           #op:I
    .restart local v4       #op:I
    const/16 v11, 0x3d

    aput-byte v11, v5, v3

    move v3, v4

    .line 740
    .end local v4           #op:I
    .restart local v3       #op:I
    :cond_9
    iget-boolean v11, p0, Lcom/isw/android/corp/util/Base64$Encoder;->do_newline:Z

    if-eqz v11, :cond_4

    .line 741
    iget-boolean v11, p0, Lcom/isw/android/corp/util/Base64$Encoder;->do_cr:Z

    if-eqz v11, :cond_a

    add-int/lit8 v4, v3, 0x1

    .end local v3           #op:I
    .restart local v4       #op:I
    const/16 v11, 0xd

    aput-byte v11, v5, v3

    move v3, v4

    .line 742
    .end local v4           #op:I
    .restart local v3       #op:I
    :cond_a
    add-int/lit8 v4, v3, 0x1

    .end local v3           #op:I
    .restart local v4       #op:I
    const/16 v11, 0xa

    aput-byte v11, v5, v3

    move v3, v4

    .line 744
    .end local v4           #op:I
    .restart local v3       #op:I
    goto/16 :goto_3

    .line 731
    .end local v3           #op:I
    .end local v6           #p:I
    .restart local v4       #op:I
    .restart local v7       #p:I
    :cond_b
    add-int/lit8 v6, v7, 0x1

    .end local v7           #p:I
    .restart local v6       #p:I
    aget-byte v11, p1, v7

    goto :goto_4

    .line 732
    :cond_c
    add-int/lit8 v7, v6, 0x1

    .end local v6           #p:I
    .restart local v7       #p:I
    aget-byte v11, p1, v6

    move v6, v7

    .end local v7           #p:I
    .restart local v6       #p:I
    goto :goto_5

    .line 744
    .end local v6           #p:I
    .end local v8           #t:I
    .restart local v7       #p:I
    :cond_d
    iget-boolean v11, p0, Lcom/isw/android/corp/util/Base64$Encoder;->do_newline:Z

    if-eqz v11, :cond_e

    if-lez v4, :cond_e

    const/16 v11, 0x13

    if-eq v2, v11, :cond_e

    .line 745
    iget-boolean v11, p0, Lcom/isw/android/corp/util/Base64$Encoder;->do_cr:Z

    if-eqz v11, :cond_14

    add-int/lit8 v3, v4, 0x1

    .end local v4           #op:I
    .restart local v3       #op:I
    const/16 v11, 0xd

    aput-byte v11, v5, v4

    .line 746
    :goto_6
    add-int/lit8 v4, v3, 0x1

    .end local v3           #op:I
    .restart local v4       #op:I
    const/16 v11, 0xa

    aput-byte v11, v5, v3

    :cond_e
    move v6, v7

    .end local v7           #p:I
    .restart local v6       #p:I
    move v3, v4

    .end local v4           #op:I
    .restart local v3       #op:I
    goto/16 :goto_3

    .line 750
    :cond_f
    sget-boolean v11, Lcom/isw/android/corp/util/Base64$Encoder;->$assertionsDisabled:Z

    if-nez v11, :cond_11

    move/from16 v0, p3

    if-eq v6, v0, :cond_11

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 755
    .end local v3           #op:I
    .end local v6           #p:I
    .restart local v4       #op:I
    .restart local v7       #p:I
    :cond_10
    add-int/lit8 v11, p3, -0x1

    if-ne v7, v11, :cond_12

    .line 756
    iget-object v11, p0, Lcom/isw/android/corp/util/Base64$Encoder;->tail:[B

    iget v12, p0, Lcom/isw/android/corp/util/Base64$Encoder;->tailLen:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lcom/isw/android/corp/util/Base64$Encoder;->tailLen:I

    aget-byte v13, p1, v7

    aput-byte v13, v11, v12

    move v6, v7

    .end local v7           #p:I
    .restart local v6       #p:I
    move v3, v4

    .line 763
    .end local v4           #op:I
    .restart local v3       #op:I
    :cond_11
    :goto_7
    iput v3, p0, Lcom/isw/android/corp/util/Base64$Encoder;->op:I

    .line 764
    iput v2, p0, Lcom/isw/android/corp/util/Base64$Encoder;->count:I

    .line 766
    const/4 v11, 0x1

    return v11

    .line 757
    .end local v3           #op:I
    .end local v6           #p:I
    .restart local v4       #op:I
    .restart local v7       #p:I
    :cond_12
    add-int/lit8 v11, p3, -0x2

    if-ne v7, v11, :cond_13

    .line 758
    iget-object v11, p0, Lcom/isw/android/corp/util/Base64$Encoder;->tail:[B

    iget v12, p0, Lcom/isw/android/corp/util/Base64$Encoder;->tailLen:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lcom/isw/android/corp/util/Base64$Encoder;->tailLen:I

    aget-byte v13, p1, v7

    aput-byte v13, v11, v12

    .line 759
    iget-object v11, p0, Lcom/isw/android/corp/util/Base64$Encoder;->tail:[B

    iget v12, p0, Lcom/isw/android/corp/util/Base64$Encoder;->tailLen:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lcom/isw/android/corp/util/Base64$Encoder;->tailLen:I

    add-int/lit8 v13, v7, 0x1

    aget-byte v13, p1, v13

    aput-byte v13, v11, v12

    :cond_13
    move v6, v7

    .end local v7           #p:I
    .restart local v6       #p:I
    move v3, v4

    .end local v4           #op:I
    .restart local v3       #op:I
    goto :goto_7

    .end local v3           #op:I
    .end local v6           #p:I
    .restart local v4       #op:I
    .restart local v7       #p:I
    :cond_14
    move v3, v4

    .end local v4           #op:I
    .restart local v3       #op:I
    goto :goto_6

    .end local v7           #p:I
    .restart local v6       #p:I
    :cond_15
    move v7, v6

    .end local v6           #p:I
    .restart local v7       #p:I
    move v4, v3

    .end local v3           #op:I
    .restart local v4       #op:I
    goto/16 :goto_1

    .line 647
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
