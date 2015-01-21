.class Lcom/zte/heartyservice/setting/CleanAppAlert$1;
.super Ljava/lang/Object;
.source "CleanAppAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/setting/CleanAppAlert;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/setting/CleanAppAlert;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/CleanAppAlert;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/zte/heartyservice/setting/CleanAppAlert$1;->this$0:Lcom/zte/heartyservice/setting/CleanAppAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 48
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 49
    iget-object v0, p0, Lcom/zte/heartyservice/setting/CleanAppAlert$1;->this$0:Lcom/zte/heartyservice/setting/CleanAppAlert;

    invoke-virtual {v0}, Lcom/zte/heartyservice/setting/CleanAppAlert;->finish()V

    .line 50
    return-void
.end method
