.class Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener$1;
.super Ljava/lang/Object;
.source "HeartyServiceSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;

.field final synthetic val$buttonView:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;Landroid/widget/CompoundButton;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener$1;->this$1:Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;

    iput-object p2, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener$1;->val$buttonView:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener$1;->val$buttonView:Landroid/widget/CompoundButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 326
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 327
    return-void
.end method
