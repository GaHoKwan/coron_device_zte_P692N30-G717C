.class Lcom/mediatek/settings/plugin/FactoryExt$2;
.super Ljava/lang/Object;
.source "FactoryExt.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/plugin/FactoryExt;->getInternalStorageView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/plugin/FactoryExt;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/plugin/FactoryExt;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/mediatek/settings/plugin/FactoryExt$2;->this$0:Lcom/mediatek/settings/plugin/FactoryExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mediatek/settings/plugin/FactoryExt$2;->this$0:Lcom/mediatek/settings/plugin/FactoryExt;

    #getter for: Lcom/mediatek/settings/plugin/FactoryExt;->mMediaDataCheckbox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/mediatek/settings/plugin/FactoryExt;->access$100(Lcom/mediatek/settings/plugin/FactoryExt;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 112
    return-void
.end method
