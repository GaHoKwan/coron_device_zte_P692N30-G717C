.class Lcom/zte/heartyservice/setting/InstructionActivity$2;
.super Ljava/lang/Object;
.source "InstructionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/setting/InstructionActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/setting/InstructionActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/InstructionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/zte/heartyservice/setting/InstructionActivity$2;->this$0:Lcom/zte/heartyservice/setting/InstructionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 108
    const-string v2, "http://apps.ztems.com/ztetd/index.html"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 109
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 110
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/zte/heartyservice/setting/InstructionActivity$2;->this$0:Lcom/zte/heartyservice/setting/InstructionActivity;

    invoke-virtual {v2, v0}, Lcom/zte/heartyservice/setting/InstructionActivity;->startActivity(Landroid/content/Intent;)V

    .line 111
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 112
    return-void
.end method