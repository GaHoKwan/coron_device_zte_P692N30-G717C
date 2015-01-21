.class Lcom/zte/heartyservice/setting/HeartyServiceSettings$3;
.super Ljava/lang/Object;
.source "HeartyServiceSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/setting/HeartyServiceSettings;->closeAutoRunDlg(ZLandroid/widget/CompoundButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/setting/HeartyServiceSettings;

.field final synthetic val$buttonView:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/HeartyServiceSettings;Landroid/widget/CompoundButton;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 810
    iput-object p1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$3;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSettings;

    iput-object p2, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$3;->val$buttonView:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 813
    iget-object v0, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$3;->val$buttonView:Landroid/widget/CompoundButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 814
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 815
    return-void
.end method
