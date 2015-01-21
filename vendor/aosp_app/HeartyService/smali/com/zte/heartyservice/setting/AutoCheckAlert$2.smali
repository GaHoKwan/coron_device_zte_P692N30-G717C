.class Lcom/zte/heartyservice/setting/AutoCheckAlert$2;
.super Ljava/lang/Object;
.source "AutoCheckAlert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/setting/AutoCheckAlert;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/setting/AutoCheckAlert;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/AutoCheckAlert;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/zte/heartyservice/setting/AutoCheckAlert$2;->this$0:Lcom/zte/heartyservice/setting/AutoCheckAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AutoCheckAlert$2;->this$0:Lcom/zte/heartyservice/setting/AutoCheckAlert;

    invoke-virtual {v0}, Lcom/zte/heartyservice/setting/AutoCheckAlert;->finish()V

    .line 56
    return-void
.end method
