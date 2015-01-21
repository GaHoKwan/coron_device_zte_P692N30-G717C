.class Lcom/mediatek/mtklogger/utils/SwitchPreference$1;
.super Ljava/lang/Object;
.source "SwitchPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mtklogger/utils/SwitchPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/utils/SwitchPreference;


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/utils/SwitchPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/mediatek/mtklogger/utils/SwitchPreference$1;->this$0:Lcom/mediatek/mtklogger/utils/SwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mediatek/mtklogger/utils/SwitchPreference$1;->this$0:Lcom/mediatek/mtklogger/utils/SwitchPreference;

    #calls: Lcom/mediatek/mtklogger/utils/SwitchPreference;->callOnStateChangeListener(Z)V
    invoke-static {v0, p2}, Lcom/mediatek/mtklogger/utils/SwitchPreference;->access$000(Lcom/mediatek/mtklogger/utils/SwitchPreference;Z)V

    .line 42
    return-void
.end method
