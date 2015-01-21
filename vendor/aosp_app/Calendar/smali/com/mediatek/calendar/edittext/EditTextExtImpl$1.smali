.class Lcom/mediatek/calendar/edittext/EditTextExtImpl$1;
.super Landroid/text/InputFilter$LengthFilter;
.source "EditTextExtImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/calendar/edittext/EditTextExtImpl;->createInputFilter(Landroid/widget/EditText;Landroid/content/Context;I)[Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/calendar/edittext/EditTextExtImpl;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$maxLength:I


# direct methods
.method constructor <init>(Lcom/mediatek/calendar/edittext/EditTextExtImpl;IILandroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/mediatek/calendar/edittext/EditTextExtImpl$1;->this$0:Lcom/mediatek/calendar/edittext/EditTextExtImpl;

    iput p3, p0, Lcom/mediatek/calendar/edittext/EditTextExtImpl$1;->val$maxLength:I

    iput-object p4, p0, Lcom/mediatek/calendar/edittext/EditTextExtImpl$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 5
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 31
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2

    if-nez p4, :cond_1

    const/4 v2, 0x0

    :goto_0
    add-int/2addr v2, p5

    sub-int/2addr v2, p6

    iget v3, p0, Lcom/mediatek/calendar/edittext/EditTextExtImpl$1;->val$maxLength:I

    if-ne v2, v3, :cond_2

    .line 33
    iget-object v2, p0, Lcom/mediatek/calendar/edittext/EditTextExtImpl$1;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/calendar/edittext/EditTextExtImpl$1;->val$context:Landroid/content/Context;

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 35
    .local v1, vibrator:Landroid/os/Vibrator;
    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    .line 36
    .local v0, hasVibrator:Z
    if-eqz v0, :cond_0

    .line 37
    const/4 v2, 0x2

    new-array v2, v2, [J

    fill-array-data v2, :array_0

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 39
    :cond_0
    const-string v2, "EditTextExtensionImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "input out of range,hasVibrator:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/calendar/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v2, ""

    .line 42
    .end local v0           #hasVibrator:Z
    .end local v1           #vibrator:Landroid/os/Vibrator;
    :goto_1
    return-object v2

    .line 31
    :cond_1
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    goto :goto_0

    .line 42
    :cond_2
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    .line 37
    :array_0
    .array-data 0x8
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
