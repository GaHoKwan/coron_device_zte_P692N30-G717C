.class public final Lcom/android/inputmethod/compat/EditorInfoCompatUtils;
.super Ljava/lang/Object;
.source "EditorInfoCompatUtils.java"


# static fields
.field private static final FIELD_IME_FLAG_FORCE_ASCII:Ljava/lang/reflect/Field;

.field private static final OBJ_IME_FLAG_FORCE_ASCII:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 25
    const-class v0, Landroid/view/inputmethod/EditorInfo;

    const-string v1, "IME_FLAG_FORCE_ASCII"

    invoke-static {v0, v1}, Lcom/android/inputmethod/compat/CompatUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->FIELD_IME_FLAG_FORCE_ASCII:Ljava/lang/reflect/Field;

    .line 27
    sget-object v0, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->FIELD_IME_FLAG_FORCE_ASCII:Ljava/lang/reflect/Field;

    invoke-static {v2, v2, v0}, Lcom/android/inputmethod/compat/CompatUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sput-object v0, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->OBJ_IME_FLAG_FORCE_ASCII:Ljava/lang/Integer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static hasFlagForceAscii(I)Z
    .locals 2
    .parameter "imeOptions"

    .prologue
    const/4 v0, 0x0

    .line 35
    sget-object v1, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->OBJ_IME_FLAG_FORCE_ASCII:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 37
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->OBJ_IME_FLAG_FORCE_ASCII:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static imeActionName(I)Ljava/lang/String;
    .locals 3
    .parameter "imeOptions"

    .prologue
    .line 41
    and-int/lit16 v0, p0, 0xff

    .line 42
    .local v0, actionId:I
    packed-switch v0, :pswitch_data_0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "actionUnknown("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 44
    :pswitch_0
    const-string v1, "actionUnspecified"

    goto :goto_0

    .line 46
    :pswitch_1
    const-string v1, "actionNone"

    goto :goto_0

    .line 48
    :pswitch_2
    const-string v1, "actionGo"

    goto :goto_0

    .line 50
    :pswitch_3
    const-string v1, "actionSearch"

    goto :goto_0

    .line 52
    :pswitch_4
    const-string v1, "actionSend"

    goto :goto_0

    .line 54
    :pswitch_5
    const-string v1, "actionNext"

    goto :goto_0

    .line 56
    :pswitch_6
    const-string v1, "actionDone"

    goto :goto_0

    .line 58
    :pswitch_7
    const-string v1, "actionPrevious"

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static imeOptionsName(I)Ljava/lang/String;
    .locals 3
    .parameter "imeOptions"

    .prologue
    .line 65
    invoke-static {p0}, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->imeActionName(I)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, action:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v1, flags:Ljava/lang/StringBuilder;
    const/high16 v2, 0x4000

    and-int/2addr v2, p0

    if-eqz v2, :cond_0

    .line 68
    const-string v2, "flagNoEnterAction|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :cond_0
    const/high16 v2, 0x800

    and-int/2addr v2, p0

    if-eqz v2, :cond_1

    .line 71
    const-string v2, "flagNavigateNext|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    :cond_1
    const/high16 v2, 0x400

    and-int/2addr v2, p0

    if-eqz v2, :cond_2

    .line 74
    const-string v2, "flagNavigatePrevious|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_2
    invoke-static {p0}, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->hasFlagForceAscii(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 77
    const-string v2, "flagForceAscii|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :cond_3
    if-eqz v0, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
