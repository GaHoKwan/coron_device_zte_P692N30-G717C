.class Lcom/hf/UI/HFCheckBoxPreference$1;
.super Ljava/lang/Object;
.source "HFCheckBoxPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/HFCheckBoxPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/HFCheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/hf/UI/HFCheckBoxPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/HFCheckBoxPreference$1;->this$0:Lcom/hf/UI/HFCheckBoxPreference;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/hf/UI/HFCheckBoxPreference$1;->this$0:Lcom/hf/UI/HFCheckBoxPreference;

    #calls: Lcom/hf/UI/HFCheckBoxPreference;->onClick()V
    invoke-static {v0}, Lcom/hf/UI/HFCheckBoxPreference;->access$0(Lcom/hf/UI/HFCheckBoxPreference;)V

    .line 40
    return-void
.end method
