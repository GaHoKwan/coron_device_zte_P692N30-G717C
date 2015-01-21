.class public Lcom/android/simmelock/SMLCommonProcess;
.super Ljava/lang/Object;
.source "SMLCommonProcess.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static limitEditText(Landroid/widget/EditText;I)V
    .locals 3
    .parameter "et"
    .parameter "limitLength"

    .prologue
    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 53
    new-instance v0, Lcom/android/simmelock/SMLCommonProcess$1;

    invoke-direct {v0}, Lcom/android/simmelock/SMLCommonProcess$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 65
    return-void
.end method

.method public static limitEditTextPassword(Landroid/widget/EditText;I)V
    .locals 1
    .parameter "et"
    .parameter "limitLength"

    .prologue
    .line 72
    invoke-static {p0, p1}, Lcom/android/simmelock/SMLCommonProcess;->limitEditText(Landroid/widget/EditText;I)V

    .line 73
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 74
    return-void
.end method

.method public static verifyPassword(Landroid/widget/EditText;Ljava/lang/String;)Z
    .locals 2
    .parameter "et"
    .parameter "lockPassword"

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, etContent:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method
