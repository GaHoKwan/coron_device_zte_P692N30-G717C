.class Lcom/zte/heartyservice/main/StartReceiver$1;
.super Ltmsdk/common/TMSBootReceiver;
.source "StartReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/main/StartReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/main/StartReceiver;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/main/StartReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/zte/heartyservice/main/StartReceiver$1;->this$0:Lcom/zte/heartyservice/main/StartReceiver;

    invoke-direct {p0}, Ltmsdk/common/TMSBootReceiver;-><init>()V

    return-void
.end method
