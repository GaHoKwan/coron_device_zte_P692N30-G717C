.class Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter$1;
.super Ljava/lang/Object;
.source "PowerWidgetDialogActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter$1;->this$1:Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter;

    iput p2, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 181
    if-eqz p2, :cond_0

    .line 182
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter$1;->this$1:Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter;

    iget-object v0, v0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter;->this$0:Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;

    #getter for: Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->access$500(Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter$1;->val$position:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 183
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter$1;->this$1:Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter;

    iget-object v0, v0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter;->this$0:Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;

    iget v1, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter$1;->val$position:I

    #calls: Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->switchPowerMode(I)V
    invoke-static {v0, v1}, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->access$200(Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;I)V

    .line 185
    :cond_0
    return-void
.end method
