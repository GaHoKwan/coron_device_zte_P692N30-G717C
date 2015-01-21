.class Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper$1;
.super Landroid/os/Handler;
.source "SmartPowerSQLiteOpenHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper$1;->this$0:Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 67
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 74
    :goto_0
    return-void

    .line 69
    :pswitch_0
    iget-object v0, p0, Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper$1;->this$0:Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;

    #calls: Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;->notifyContentChange()V
    invoke-static {v0}, Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;->access$000(Lcom/zte/heartyservice/power/SmartPowerSQLiteOpenHelper;)V

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
