.class Lcom/zte/heartyservice/net/OverLimitMonthAlert$3;
.super Ljava/lang/Object;
.source "OverLimitMonthAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/net/OverLimitMonthAlert;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/net/OverLimitMonthAlert;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/net/OverLimitMonthAlert;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/zte/heartyservice/net/OverLimitMonthAlert$3;->this$0:Lcom/zte/heartyservice/net/OverLimitMonthAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/zte/heartyservice/net/OverLimitMonthAlert$3;->this$0:Lcom/zte/heartyservice/net/OverLimitMonthAlert;

    invoke-virtual {v0}, Lcom/zte/heartyservice/net/OverLimitMonthAlert;->finish()V

    .line 97
    return-void
.end method
