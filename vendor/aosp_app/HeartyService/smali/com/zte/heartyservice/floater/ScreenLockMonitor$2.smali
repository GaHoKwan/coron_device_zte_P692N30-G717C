.class Lcom/zte/heartyservice/floater/ScreenLockMonitor$2;
.super Ljava/lang/Object;
.source "ScreenLockMonitor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/floater/ScreenLockMonitor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/floater/ScreenLockMonitor;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/floater/ScreenLockMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$2;->this$0:Lcom/zte/heartyservice/floater/ScreenLockMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/zte/heartyservice/floater/ScreenLockMonitor$2;->this$0:Lcom/zte/heartyservice/floater/ScreenLockMonitor;

    invoke-virtual {v0}, Lcom/zte/heartyservice/floater/ScreenLockMonitor;->finish()V

    .line 125
    return-void
.end method
