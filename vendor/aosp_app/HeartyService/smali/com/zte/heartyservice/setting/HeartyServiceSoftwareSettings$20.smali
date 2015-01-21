.class Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$20;
.super Ljava/lang/Object;
.source "HeartyServiceSoftwareSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->showAppExitDialogReal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1102
    iput-object p1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$20;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$20;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    #calls: Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->stopHeartyService()V
    invoke-static {v0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->access$1100(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;)V

    .line 1108
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1109
    return-void
.end method
