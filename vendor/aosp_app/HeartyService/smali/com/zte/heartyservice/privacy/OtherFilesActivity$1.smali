.class Lcom/zte/heartyservice/privacy/OtherFilesActivity$1;
.super Ljava/lang/Object;
.source "OtherFilesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/OtherFilesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/OtherFilesActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/OtherFilesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/OtherFilesActivity$1;->this$0:Lcom/zte/heartyservice/privacy/OtherFilesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 48
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 56
    :goto_0
    return-void

    .line 51
    :pswitch_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/OtherFilesActivity$1;->this$0:Lcom/zte/heartyservice/privacy/OtherFilesActivity;

    #calls: Lcom/zte/heartyservice/privacy/OtherFilesActivity;->startFileExplorer()V
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/OtherFilesActivity;->access$000(Lcom/zte/heartyservice/privacy/OtherFilesActivity;)V

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
