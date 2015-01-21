.class public Lcom/android/camera/ui/FlashPickerButton;
.super Lcom/android/camera/ui/PickerButton;
.source "FlashPickerButton.java"


# static fields
.field private static final FLASH_AUTO:Ljava/lang/String; = "auto"

.field private static final FLASH_OFF:Ljava/lang/String; = "off"

.field private static final FLASH_ON:Ljava/lang/String; = "on"

.field private static final FLASH_TORCH:Ljava/lang/String; = "torch"

.field private static final TAG:Ljava/lang/String; = "FlashPickerButton"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/PickerButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected getValidIndexIfNotFind(Ljava/lang/String;)I
    .locals 4
    .parameter "value"

    .prologue
    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, index:I
    const-string v1, "auto"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    iget-object v1, p0, Lcom/android/camera/ui/PickerButton;->mPreference:Lcom/android/camera/IconListPreference;

    const-string v2, "off"

    invoke-virtual {v1, v2}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 33
    :cond_0
    :goto_0
    const-string v1, "FlashPickerButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getValidIndexIfNotFind("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return v0

    .line 28
    :cond_1
    const-string v1, "on"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 29
    iget-object v1, p0, Lcom/android/camera/ui/PickerButton;->mPreference:Lcom/android/camera/IconListPreference;

    const-string v2, "torch"

    invoke-virtual {v1, v2}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 30
    :cond_2
    const-string v1, "torch"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/android/camera/ui/PickerButton;->mPreference:Lcom/android/camera/IconListPreference;

    const-string v2, "on"

    invoke-virtual {v1, v2}, Lcom/android/camera/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
