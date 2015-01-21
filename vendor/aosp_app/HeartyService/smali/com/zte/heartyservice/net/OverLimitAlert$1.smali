.class Lcom/zte/heartyservice/net/OverLimitAlert$1;
.super Ljava/lang/Object;
.source "OverLimitAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/net/OverLimitAlert;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/net/OverLimitAlert;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/net/OverLimitAlert;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/zte/heartyservice/net/OverLimitAlert$1;->this$0:Lcom/zte/heartyservice/net/OverLimitAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 69
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 70
    iget-object v0, p0, Lcom/zte/heartyservice/net/OverLimitAlert$1;->this$0:Lcom/zte/heartyservice/net/OverLimitAlert;

    invoke-virtual {v0}, Lcom/zte/heartyservice/net/OverLimitAlert;->finish()V

    .line 71
    return-void
.end method
