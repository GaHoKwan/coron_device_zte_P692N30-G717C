.class Lcom/zte/heartyservice/privacy/ImageVideoActivity$1;
.super Ljava/lang/Object;
.source "ImageVideoActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/privacy/ImageVideoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/ImageVideoActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/ImageVideoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity$1;->this$0:Lcom/zte/heartyservice/privacy/ImageVideoActivity;

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
    .line 94
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 110
    :goto_0
    return-void

    .line 97
    :pswitch_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity$1;->this$0:Lcom/zte/heartyservice/privacy/ImageVideoActivity;

    #calls: Lcom/zte/heartyservice/privacy/ImageVideoActivity;->doWhenSelectPhotoVideo()V
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->access$000(Lcom/zte/heartyservice/privacy/ImageVideoActivity;)V

    goto :goto_0

    .line 101
    :pswitch_1
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity$1;->this$0:Lcom/zte/heartyservice/privacy/ImageVideoActivity;

    #calls: Lcom/zte/heartyservice/privacy/ImageVideoActivity;->doWhenStartCamera()V
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->access$100(Lcom/zte/heartyservice/privacy/ImageVideoActivity;)V

    goto :goto_0

    .line 105
    :pswitch_2
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/ImageVideoActivity$1;->this$0:Lcom/zte/heartyservice/privacy/ImageVideoActivity;

    #calls: Lcom/zte/heartyservice/privacy/ImageVideoActivity;->doWhenStartVideo()V
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/ImageVideoActivity;->access$200(Lcom/zte/heartyservice/privacy/ImageVideoActivity;)V

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
