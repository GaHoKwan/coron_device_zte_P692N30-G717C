.class Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener$5;
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


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;)V
    .locals 0
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener$5;->this$1:Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 397
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 398
    return-void
.end method
