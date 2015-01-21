.class Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$17;
.super Ljava/lang/Object;
.source "CreateNewNoteActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->createObjectPopupWindow(Landroid/view/View;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V
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
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

.field private final synthetic val$controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

.field private final synthetic val$objectListPopup:Landroid/widget/ListPopupWindow;

.field private final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Landroid/view/View;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;Landroid/widget/ListPopupWindow;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$17;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iput-object p2, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$17;->val$view:Landroid/view/View;

    iput-object p3, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$17;->val$controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    iput-object p4, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$17;->val$objectListPopup:Landroid/widget/ListPopupWindow;

    .line 1064
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
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
    .line 1069
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v6

    check-cast v6, Landroid/widget/Adapter;

    invoke-interface {v6, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1070
    .local v2, itemTitle:Ljava/lang/String;
    const-string v6, "CreateNewNoteActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "itemTitle="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$17;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    invoke-virtual {v6}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090043

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1087
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$17;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$17;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iget-object v7, v7, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$17;->val$view:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v7

    #setter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->editDoodleIndex:I
    invoke-static {v6, v7}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$29(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;I)V

    .line 1088
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$17;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCreateSkitchInfo:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;
    invoke-static {v6}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$30(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    move-result-object v6

    invoke-virtual {v6}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->initDoodle()V

    .line 1089
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$17;->val$view:Landroid/view/View;

    .line 1090
    .local v0, childView:Landroid/view/View;
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$17;->val$view:Landroid/view/View;

    instance-of v6, v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 1091
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$17;->val$view:Landroid/view/View;

    check-cast v6, Landroid/widget/LinearLayout;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1093
    :cond_0
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1094
    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$17;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    move-object v6, v0

    check-cast v6, Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;

    #calls: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->adjustScrollBarByImageView(Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;)V
    invoke-static {v7, v6}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$31(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;)V

    .line 1095
    const-string v6, "doodle"

    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$17;->val$controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    iget-object v7, v7, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1096
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$17;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCreateSkitchInfo:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;
    invoke-static {v6}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$30(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    move-result-object v6

    check-cast v0, Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;

    .end local v0           #childView:Landroid/view/View;
    invoke-virtual {v6, v0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->editDooleImage(Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;)V

    .line 1123
    :cond_1
    :goto_0
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$17;->val$objectListPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v6}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1124
    return-void

    .line 1098
    .restart local v0       #childView:Landroid/view/View;
    :cond_2
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$17;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mCreateSkitchInfo:Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;
    invoke-static {v6}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$30(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;

    move-result-object v6

    check-cast v0, Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;

    .end local v0           #childView:Landroid/view/View;
    invoke-virtual {v6, v0}, Lzte/com/cn/cloudnotepad/ui/CreateSkitchInfo;->editNormalImage(Lzte/com/cn/cloudnotepad/skitch/view/MyImageView;)V

    goto :goto_0

    .line 1101
    :cond_3
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$17;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    invoke-virtual {v6}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09001d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1102
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$17;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iget-object v6, v6, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$17;->val$view:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 1103
    .local v1, index:I
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$17;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$17;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iget-object v7, v7, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mControlsUtils:Lzte/com/cn/cloudnotepad/utils/ControlsUtils;

    invoke-virtual {v7, v1}, Lzte/com/cn/cloudnotepad/utils/ControlsUtils;->getControlData(I)Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lzte/com/cn/cloudnotepad/ui/CreateAlertDialog;->CreateRenameObjectAlertDlg(Landroid/content/Context;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;I)V

    goto :goto_0

    .line 1105
    .end local v1           #index:I
    :cond_4
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$17;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    invoke-virtual {v6}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090038

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1106
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$17;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$17;->val$controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    iget-object v7, v7, Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;->content:Ljava/lang/String;

    invoke-static {v6, v7}, Lzte/com/cn/cloudnotepad/utils/ResourceUtils;->shareObject(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1108
    :cond_5
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$17;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    invoke-virtual {v6}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09001e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1110
    const v5, 0x7f090011

    .line 1111
    .local v5, titleId:I
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$17;->val$view:Landroid/view/View;

    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$17;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    #getter for: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mLocationRelativeLayout:Landroid/widget/RelativeLayout;
    invoke-static {v7}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$32(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;)Landroid/widget/RelativeLayout;

    move-result-object v7

    if-ne v6, v7, :cond_7

    .line 1112
    const/4 v1, -0x1

    .line 1121
    .restart local v1       #index:I
    :cond_6
    :goto_1
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$17;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$17;->val$controlData:Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;

    #calls: Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->CreateDeleteObjectAlertDlg(Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;II)V
    invoke-static {v6, v7, v1, v5}, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->access$33(Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;II)V

    goto/16 :goto_0

    .line 1114
    .end local v1           #index:I
    :cond_7
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$17;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iget-object v6, v6, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$17;->val$view:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 1115
    .restart local v1       #index:I
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$17;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iget-object v6, v6, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 1116
    .local v4, preEditText:Landroid/widget/EditText;
    iget-object v6, p0, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity$17;->this$0:Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;

    iget-object v6, v6, Lzte/com/cn/cloudnotepad/ui/CreateNewNoteActivity;->mResourceLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 1117
    .local v3, nextEditText:Landroid/widget/EditText;
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    add-int/2addr v6, v7

    const/16 v7, 0x1388

    if-le v6, v7, :cond_6

    .line 1118
    const v5, 0x7f090014

    goto :goto_1
.end method
