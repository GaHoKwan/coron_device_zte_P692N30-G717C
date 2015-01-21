.class Lcom/android/uiautomator/core/UiDevice$2;
.super Ljava/lang/Object;
.source "UiDevice.java"

# interfaces
.implements Lcom/android/internal/util/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/uiautomator/core/UiDevice;->waitForWindowUpdate(Ljava/lang/String;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Predicate",
        "<",
        "Landroid/view/accessibility/AccessibilityEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/uiautomator/core/UiDevice;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/uiautomator/core/UiDevice;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 741
    iput-object p1, p0, Lcom/android/uiautomator/core/UiDevice$2;->this$0:Lcom/android/uiautomator/core/UiDevice;

    iput-object p2, p0, Lcom/android/uiautomator/core/UiDevice$2;->val$packageName:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .parameter "t"

    .prologue
    const/4 v0, 0x0

    .line 744
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x800

    if-ne v1, v2, :cond_1

    .line 745
    iget-object v1, p0, Lcom/android/uiautomator/core/UiDevice$2;->val$packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/uiautomator/core/UiDevice$2;->val$packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 747
    :cond_1
    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 741
    check-cast p1, Landroid/view/accessibility/AccessibilityEvent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/uiautomator/core/UiDevice$2;->apply(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method
