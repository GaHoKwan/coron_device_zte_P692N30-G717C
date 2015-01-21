.class Laxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgj;


# instance fields
.field a:I

.field final synthetic a:Laxw;

.field final a:Ljava/io/ByteArrayOutputStream;

.field private a:Z


# direct methods
.method private constructor <init>(Laxw;)V
    .locals 1
    .parameter

    .prologue
    .line 656
    iput-object p1, p0, Laxy;->a:Laxw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Laxy;->a:Ljava/io/ByteArrayOutputStream;

    .line 661
    const/4 v0, 0x0

    iput-boolean v0, p0, Laxy;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Laxw;Laxx;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 656
    invoke-direct {p0, p1}, Laxy;-><init>(Laxw;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 679
    const/4 v0, 0x0

    iput-boolean v0, p0, Laxy;->a:Z

    .line 682
    iget-object v0, p0, Laxy;->a:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Laxy;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iput v0, p0, Laxy;->a:I

    .line 684
    :cond_0
    return-void
.end method

.method public a(F)V
    .locals 2
    .parameter

    .prologue
    const/high16 v1, 0x4170

    .line 747
    mul-float v0, p1, v1

    add-float/2addr v0, v1

    .line 748
    iget-object v1, p0, Laxy;->a:Laxw;

    invoke-static {v1}, Laxw;->a(Laxw;)Lcom/sohu/inputmethod/voice/VoiceInputView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 749
    iget-object v1, p0, Laxy;->a:Laxw;

    invoke-static {v1}, Laxw;->a(Laxw;)Lcom/sohu/inputmethod/voice/VoiceInputView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(F)V

    .line 750
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 692
    iget-object v0, p0, Laxy;->a:Laxw;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Laxw;->a(Laxw;I)I

    .line 693
    sget-boolean v0, Laxw;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 694
    iget-object v0, p0, Laxy;->a:Laxw;

    invoke-static {v0}, Laxw;->a(Laxw;)Laxz;

    move-result-object v0

    invoke-interface {v0}, Laxz;->F()V

    .line 696
    :cond_0
    invoke-static {}, Lgt;->a()Lgt;

    move-result-object v0

    iput p1, v0, Lgt;->e:I

    .line 697
    iget-object v0, p0, Laxy;->a:Laxw;

    iget-boolean v1, p0, Laxy;->a:Z

    invoke-static {v0, p1, v1}, Laxw;->a(Laxw;IZ)V

    .line 698
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 674
    iget-object v0, p0, Laxy;->a:Laxw;

    invoke-static {v0}, Laxw;->a(Laxw;)Lcom/sohu/inputmethod/voice/VoiceInputView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Laxy;->a:Laxw;

    invoke-static {v0}, Laxw;->a(Laxw;)Lcom/sohu/inputmethod/voice/VoiceInputView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->j()V

    .line 676
    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .parameter

    .prologue
    .line 687
    iget-object v0, p0, Laxy;->a:Laxw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laxw;->a(Laxw;I)I

    .line 688
    iget-object v0, p0, Laxy;->a:Laxw;

    invoke-static {v0, p1}, Laxw;->a(Laxw;Ljava/util/List;)V

    .line 689
    return-void
.end method

.method public a([S)V
    .locals 5
    .parameter

    .prologue
    .line 701
    iget-object v0, p0, Laxy;->a:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_1

    .line 717
    :cond_0
    return-void

    .line 705
    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-short v2, p1, v0

    .line 708
    :try_start_0
    iget-object v3, p0, Laxy;->a:Ljava/io/ByteArrayOutputStream;

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 709
    iget-object v3, p0, Laxy;->a:Ljava/io/ByteArrayOutputStream;

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-virtual {v3, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 714
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public b()V
    .locals 4

    .prologue
    .line 720
    iget-object v0, p0, Laxy;->a:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 744
    :goto_0
    return-void

    .line 721
    :cond_0
    iget-object v0, p0, Laxy;->a:Laxw;

    invoke-static {v0}, Laxw;->a(Laxw;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 722
    iget-object v0, p0, Laxy;->a:Laxw;

    invoke-static {v0}, Laxw;->a(Laxw;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->bW:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->bW:I

    .line 723
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Laxy;->a:Z

    .line 724
    iget-object v0, p0, Laxy;->a:Laxw;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Laxw;->a(Laxw;I)I

    .line 736
    iget-object v0, p0, Laxy;->a:Laxw;

    invoke-static {v0}, Laxw;->a(Laxw;)Lcom/sohu/inputmethod/voice/VoiceInputView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Laxy;->a:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_2

    .line 737
    invoke-static {}, Lgt;->a()Lgt;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lgt;->e:J

    .line 738
    iget-object v0, p0, Laxy;->a:Laxw;

    invoke-static {v0}, Laxw;->a(Laxw;)Lcom/sohu/inputmethod/voice/VoiceInputView;

    move-result-object v0

    iget-object v1, p0, Laxy;->a:Ljava/io/ByteArrayOutputStream;

    iget v2, p0, Laxy;->a:I

    iget-object v3, p0, Laxy;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Ljava/io/ByteArrayOutputStream;II)V

    .line 741
    :cond_2
    iget-object v0, p0, Laxy;->a:Laxw;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Laxw;->a(Laxw;Ljava/lang/String;)Ljava/lang/String;

    .line 742
    const/4 v0, 0x0

    sput-boolean v0, Laxw;->b:Z

    .line 743
    iget-object v0, p0, Laxy;->a:Laxw;

    invoke-static {v0}, Laxw;->a(Laxw;)Laxz;

    move-result-object v0

    iget-object v1, p0, Laxy;->a:Laxw;

    invoke-static {v1}, Laxw;->a(Laxw;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Laxw;->b:Z

    invoke-interface {v0, v1, v2}, Laxz;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Laxy;->a:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    .line 671
    :goto_0
    return-void

    .line 666
    :cond_0
    iget-object v0, p0, Laxy;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 667
    iget-object v0, p0, Laxy;->a:Ljava/io/ByteArrayOutputStream;

    invoke-static {v0}, Lazd;->a(Ljava/io/Closeable;)V

    goto :goto_0
.end method
