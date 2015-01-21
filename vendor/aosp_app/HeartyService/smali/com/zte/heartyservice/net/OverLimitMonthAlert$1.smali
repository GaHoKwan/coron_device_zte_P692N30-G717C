.class Lcom/zte/heartyservice/net/OverLimitMonthAlert$1;
.super Ljava/lang/Object;
.source "OverLimitMonthAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 71
    iput-object p1, p0, Lcom/zte/heartyservice/net/OverLimitMonthAlert$1;->this$0:Lcom/zte/heartyservice/net/OverLimitMonthAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 76
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 77
    iget-object v0, p0, Lcom/zte/heartyservice/net/OverLimitMonthAlert$1;->this$0:Lcom/zte/heartyservice/net/OverLimitMonthAlert;

    invoke-virtual {v0}, Lcom/zte/heartyservice/net/OverLimitMonthAlert;->finish()V

    .line 78
    return-void
.end method
