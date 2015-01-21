.class public Layj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic a:Lcom/sohu/inputmethod/voice/VoiceInputView;

.field final synthetic a:Ljava/io/ByteArrayOutputStream;

.field final synthetic b:I


# direct methods
.method public constructor <init>(Lcom/sohu/inputmethod/voice/VoiceInputView;Ljava/io/ByteArrayOutputStream;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Layj;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    iput-object p2, p0, Layj;->a:Ljava/io/ByteArrayOutputStream;

    iput p3, p0, Layj;->a:I

    iput p4, p0, Layj;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 454
    iget-object v0, p0, Layj;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    sget-object v1, Layl;->b:Layl;

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Lcom/sohu/inputmethod/voice/VoiceInputView;Layl;)Layl;

    .line 455
    iget-object v0, p0, Layj;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/voice/VoiceInputView;->g()V

    .line 456
    iget-object v0, p0, Layj;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    const/4 v1, 0x1

    iget-object v2, p0, Layj;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-static {v2}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Lcom/sohu/inputmethod/voice/VoiceInputView;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b02d4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Layj;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    invoke-static {v4}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Lcom/sohu/inputmethod/voice/VoiceInputView;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b02ae

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Lcom/sohu/inputmethod/voice/VoiceInputView;ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 459
    iget-object v0, p0, Layj;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 461
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 462
    iget-object v1, p0, Layj;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 463
    iget-object v1, p0, Layj;->a:Lcom/sohu/inputmethod/voice/VoiceInputView;

    iget v2, p0, Layj;->a:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Layj;->b:I

    div-int/lit8 v3, v3, 0x2

    invoke-static {v1, v0, v2, v3}, Lcom/sohu/inputmethod/voice/VoiceInputView;->a(Lcom/sohu/inputmethod/voice/VoiceInputView;Ljava/nio/ShortBuffer;II)V

    .line 464
    return-void
.end method
