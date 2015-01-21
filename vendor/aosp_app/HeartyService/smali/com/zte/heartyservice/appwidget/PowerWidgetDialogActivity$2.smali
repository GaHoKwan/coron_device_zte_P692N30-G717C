.class Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$2;
.super Ljava/lang/Object;
.source "PowerWidgetDialogActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$2;->this$0:Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$2;->this$0:Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;

    #calls: Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->switchPowerMode(I)V
    invoke-static {v0, p3}, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->access$200(Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;I)V

    .line 74
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$2;->this$0:Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;

    #getter for: Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->mAdapter:Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter;
    invoke-static {v0}, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->access$300(Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;)Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$DialogAdapter;->notifyDataSetChanged()V

    .line 75
    return-void
.end method
