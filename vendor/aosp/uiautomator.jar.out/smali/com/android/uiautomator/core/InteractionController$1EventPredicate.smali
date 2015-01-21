.class Lcom/android/uiautomator/core/InteractionController$1EventPredicate;
.super Ljava/lang/Object;
.source "InteractionController.java"

# interfaces
.implements Lcom/android/internal/util/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/uiautomator/core/InteractionController;->runAndWaitForEvents(Ljava/lang/Runnable;JZI)Landroid/view/accessibility/AccessibilityEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventPredicate"
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
.field mMask:I

.field final synthetic this$0:Lcom/android/uiautomator/core/InteractionController;

.field final synthetic val$waitForAll:Z


# direct methods
.method constructor <init>(Lcom/android/uiautomator/core/InteractionController;IZ)V
    .locals 0
    .parameter
    .parameter "mask"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/uiautomator/core/InteractionController$1EventPredicate;->this$0:Lcom/android/uiautomator/core/InteractionController;

    iput-boolean p3, p0, Lcom/android/uiautomator/core/InteractionController$1EventPredicate;->val$waitForAll:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput p2, p0, Lcom/android/uiautomator/core/InteractionController$1EventPredicate;->mMask:I

    .line 216
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .parameter "t"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 220
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    iget v3, p0, Lcom/android/uiautomator/core/InteractionController$1EventPredicate;->mMask:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 221
    iget-boolean v2, p0, Lcom/android/uiautomator/core/InteractionController$1EventPredicate;->val$waitForAll:Z

    if-nez v2, :cond_1

    .line 235
    :cond_0
    :goto_0
    return v0

    .line 225
    :cond_1
    iget v2, p0, Lcom/android/uiautomator/core/InteractionController$1EventPredicate;->mMask:I

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/uiautomator/core/InteractionController$1EventPredicate;->mMask:I

    .line 228
    iget v2, p0, Lcom/android/uiautomator/core/InteractionController$1EventPredicate;->mMask:I

    if-eqz v2, :cond_0

    move v0, v1

    .line 229
    goto :goto_0

    :cond_2
    move v0, v1

    .line 235
    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    check-cast p1, Landroid/view/accessibility/AccessibilityEvent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/uiautomator/core/InteractionController$1EventPredicate;->apply(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method
