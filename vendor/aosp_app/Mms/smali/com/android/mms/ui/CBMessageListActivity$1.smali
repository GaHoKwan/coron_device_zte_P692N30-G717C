.class Lcom/android/mms/ui/CBMessageListActivity$1;
.super Ljava/lang/Object;
.source "CBMessageListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/CBMessageListActivity;->initResourceRefs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CBMessageListActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CBMessageListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/mms/ui/CBMessageListActivity$1;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-eqz p2, :cond_0

    .line 223
    check-cast p2, Lcom/android/mms/ui/CBMessageListItem;

    .end local p2
    invoke-virtual {p2}, Lcom/android/mms/ui/CBMessageListItem;->onMessageListItemClick()V

    .line 225
    :cond_0
    return-void
.end method
