.class Lcom/android/mms/ui/AdvancedSearchActivity$4;
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
    .line 175
    iput-object p1, p0, Lcom/android/mms/ui/AdvancedSearchActivity$4;->this$0:Lcom/android/mms/ui/AdvancedSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v0, 0x1

    .line 178
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/android/mms/ui/AdvancedSearchActivity$4;->this$0:Lcom/android/mms/ui/AdvancedSearchActivity;

    #calls: Lcom/android/mms/ui/AdvancedSearchActivity;->processEditTouch(I)V
    invoke-static {v1, v0}, Lcom/android/mms/ui/AdvancedSearchActivity;->access$300(Lcom/android/mms/ui/AdvancedSearchActivity;I)V

    .line 182
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
