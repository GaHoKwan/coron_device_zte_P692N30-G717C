.class Lzte/com/cn/cloudnotepad/ui/ViewNote$4;
.super Ljava/lang/Object;
.source "ViewNote.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/ViewNote;->createObjectPopupWindow(Landroid/view/View;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/ViewNote;

.field private final synthetic val$controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

.field private final synthetic val$objectListPopup:Landroid/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/ViewNote;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;Landroid/widget/ListPopupWindow;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote$4;->this$0:Lzte/com/cn/cloudnotepad/ui/ViewNote;

    iput-object p2, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote$4;->val$controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    iput-object p3, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote$4;->val$objectListPopup:Landroid/widget/ListPopupWindow;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "item"
    .parameter "pos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_0

    .line 249
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote$4;->this$0:Lzte/com/cn/cloudnotepad/ui/ViewNote;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote$4;->val$controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->content:Ljava/lang/String;

    invoke-static {v1, v2}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->shareObject(Landroid/content/Context;Ljava/lang/String;)V

    .line 260
    :goto_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote$4;->val$objectListPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 261
    return-void

    .line 252
    :cond_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote$4;->val$controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    iget-object v0, v1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->content:Ljava/lang/String;

    .line 253
    .local v0, fileName:Ljava/lang/String;
    const-string v1, "record"

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote$4;->val$controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 254
    const-string v1, "other"

    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote$4;->val$controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    iget-object v2, v2, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 255
    :cond_1
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote$4;->val$controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    iget-object v0, v1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->name:Ljava/lang/String;

    .line 257
    :cond_2
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote$4;->this$0:Lzte/com/cn/cloudnotepad/ui/ViewNote;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->saveResource(Landroid/content/Context;Ljava/lang/String;)V

    .line 258
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/ViewNote$4;->val$controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    iget-object v1, v1, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->content:Ljava/lang/String;

    sput-object v1, Lzte/com/cn/cloudnotepad/ui/ViewNote;->mCurObjectContent:Ljava/lang/String;

    goto :goto_0
.end method
