.class Lcom/zte/heartyservice/setting/AutoUpdateSettings$3;
.super Ljava/lang/Object;
.source "AutoUpdateSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/setting/AutoUpdateSettings;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/setting/AutoUpdateSettings;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/AutoUpdateSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/zte/heartyservice/setting/AutoUpdateSettings$3;->this$0:Lcom/zte/heartyservice/setting/AutoUpdateSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x1

    .line 109
    const-string v0, "hs_auto_update"

    invoke-static {v0, v1}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->setOption(Ljava/lang/String;Z)V

    .line 110
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AutoUpdateSettings$3;->this$0:Lcom/zte/heartyservice/setting/AutoUpdateSettings;

    #calls: Lcom/zte/heartyservice/setting/AutoUpdateSettings;->setEnable(Z)V
    invoke-static {v0, v1}, Lcom/zte/heartyservice/setting/AutoUpdateSettings;->access$000(Lcom/zte/heartyservice/setting/AutoUpdateSettings;Z)V

    .line 111
    iget-object v0, p0, Lcom/zte/heartyservice/setting/AutoUpdateSettings$3;->this$0:Lcom/zte/heartyservice/setting/AutoUpdateSettings;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->checkTimer(Landroid/content/Context;I)V

    .line 112
    return-void
.end method
