.class Lcom/zte/heartyservice/main/SoftWareActivity$2;
.super Landroid/os/Handler;
.source "SoftWareActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/main/SoftWareActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/main/SoftWareActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/main/SoftWareActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/zte/heartyservice/main/SoftWareActivity$2;->this$0:Lcom/zte/heartyservice/main/SoftWareActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 143
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 150
    :goto_0
    return-void

    .line 145
    :pswitch_0
    iget-object v0, p0, Lcom/zte/heartyservice/main/SoftWareActivity$2;->this$0:Lcom/zte/heartyservice/main/SoftWareActivity;

    #calls: Lcom/zte/heartyservice/main/SoftWareActivity;->nextLevel()V
    invoke-static {v0}, Lcom/zte/heartyservice/main/SoftWareActivity;->access$100(Lcom/zte/heartyservice/main/SoftWareActivity;)V

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
