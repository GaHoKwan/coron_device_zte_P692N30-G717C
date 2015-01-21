.class Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1$6;
.super Ljava/lang/Object;
.source "HeartyServiceSoftwareSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;

.field final synthetic val$buttonView:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;Landroid/widget/CompoundButton;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1$6;->this$1:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;

    iput-object p2, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1$6;->val$buttonView:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1$6;->val$buttonView:Landroid/widget/CompoundButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 159
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 160
    return-void
.end method
