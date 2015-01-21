.class Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$5;
.super Ljava/lang/Object;
.source "HeartyServiceSoftwareSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->closeShoppingSafeDlg(ZLandroid/widget/CompoundButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

.field final synthetic val$isChecked:Z


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 362
    iput-object p1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$5;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    iput-boolean p2, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$5;->val$isChecked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    .line 366
    iget-boolean v0, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$5;->val$isChecked:Z

    invoke-static {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setShoppingSafe(Z)V

    .line 367
    iget-object v0, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$5;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    invoke-virtual {v0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 368
    sput-boolean v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->skipExit:Z

    .line 369
    sput-boolean v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->skipEnter:Z

    .line 370
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 371
    return-void
.end method
