.class Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper$1;
.super Landroid/os/Handler;
.source "DisguiseSQLiteOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper$1;->this$0:Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 29
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 36
    :goto_0
    return-void

    .line 31
    :pswitch_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper$1;->this$0:Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;

    #calls: Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->notifyContentChange()V
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;->access$000(Lcom/zte/heartyservice/privacy/DisguiseSQLiteOpenHelper;)V

    goto :goto_0

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
