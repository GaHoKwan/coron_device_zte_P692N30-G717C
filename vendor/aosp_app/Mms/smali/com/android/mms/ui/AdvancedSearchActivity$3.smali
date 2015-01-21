.class Lcom/android/mms/ui/AdvancedSearchActivity$3;
.super Ljava/lang/Object;
.source "AdvancedSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/AdvancedSearchActivity;->initResource()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/AdvancedSearchActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/AdvancedSearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/mms/ui/AdvancedSearchActivity$3;->this$0:Lcom/android/mms/ui/AdvancedSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 166
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 167
    iget-object v2, p0, Lcom/android/mms/ui/AdvancedSearchActivity$3;->this$0:Lcom/android/mms/ui/AdvancedSearchActivity;

    #calls: Lcom/android/mms/ui/AdvancedSearchActivity;->processEditTouch(I)V
    invoke-static {v2, v1}, Lcom/android/mms/ui/AdvancedSearchActivity;->access$300(Lcom/android/mms/ui/AdvancedSearchActivity;I)V

    .line 170
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
