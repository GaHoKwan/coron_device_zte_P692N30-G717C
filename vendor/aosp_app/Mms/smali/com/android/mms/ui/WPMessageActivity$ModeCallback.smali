.class Lcom/android/mms/ui/WPMessageActivity$ModeCallback;
.super Ljava/lang/Object;
.source "WPMessageActivity.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/WPMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private deleteitem:Landroid/view/MenuItem;

.field private mCheckedNum:I

.field private mCheckedPosition:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mSelectedMsgIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionMenu:Lcom/android/mms/ui/CustomMenu$DropDownMenu;

.field private mSelectionMenuItem:Landroid/view/MenuItem;

.field private mSelectionTitle:Landroid/widget/Button;

.field final synthetic this$0:Lcom/android/mms/ui/WPMessageActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/WPMessageActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1029
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mCheckedNum:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/WPMessageActivity;Lcom/android/mms/ui/WPMessageActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1020
    invoke-direct {p0, p1}, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;-><init>(Lcom/android/mms/ui/WPMessageActivity;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/WPMessageActivity$ModeCallback;Landroid/view/ActionMode;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1020
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->setAllItemChecked(Landroid/view/ActionMode;Z)V

    return-void
.end method

.method private setAllItemChecked(Landroid/view/ActionMode;Z)V
    .locals 4
    .parameter "mode"
    .parameter "checked"

    .prologue
    .line 1155
    iget-object v2, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    iget-object v2, v2, Lcom/android/mms/ui/WPMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/WPMessageListAdapter;

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    .line 1156
    .local v0, num:I
    const/4 v1, 0x0

    .local v1, position:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1157
    invoke-virtual {p0, v1, p2}, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->setItemChecked(IZ)V

    .line 1156
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1159
    :cond_0
    if-eqz p2, :cond_2

    .line 1160
    iget-object v2, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->deleteitem:Landroid/view/MenuItem;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1164
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    iget-object v2, v2, Lcom/android/mms/ui/WPMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/WPMessageListAdapter;

    if-eqz v2, :cond_1

    .line 1165
    iget-object v2, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    iget-object v2, v2, Lcom/android/mms/ui/WPMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/WPMessageListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/WPMessageListAdapter;->notifyDataSetChanged()V

    .line 1167
    :cond_1
    return-void

    .line 1162
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->deleteitem:Landroid/view/MenuItem;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method private updateSelectionTitle()V
    .locals 2

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mSelectionMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1192
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/WPMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/WPMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/WPMessageListAdapter;->isAllSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1193
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mSelectionMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f0b00b0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1198
    :cond_0
    :goto_0
    return-void

    .line 1195
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mSelectionMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f0b0074

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public confirmSyncCheckedPositons()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 1170
    iget-object v7, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mCheckedPosition:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 1171
    iget-object v7, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mSelectedMsgIds:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 1172
    iget-object v7, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    #getter for: Lcom/android/mms/ui/WPMessageActivity;->mMsgListView:Lcom/android/mms/ui/WPMessageListView;
    invoke-static {v7}, Lcom/android/mms/ui/WPMessageActivity;->access$1200(Lcom/android/mms/ui/WPMessageActivity;)Lcom/android/mms/ui/WPMessageListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/AdapterView;->getCount()I

    move-result v4

    .line 1174
    .local v4, num:I
    const/4 v5, 0x0

    .local v5, position:I
    :goto_0
    if-ge v5, v4, :cond_1

    .line 1175
    iget-object v7, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    #getter for: Lcom/android/mms/ui/WPMessageActivity;->mMsgListView:Lcom/android/mms/ui/WPMessageListView;
    invoke-static {v7}, Lcom/android/mms/ui/WPMessageActivity;->access$1200(Lcom/android/mms/ui/WPMessageActivity;)Lcom/android/mms/ui/WPMessageListView;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1176
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v7, 0x6

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1177
    .local v6, type:I
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1178
    .local v1, msgId:J
    iget-object v7, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    iget-object v7, v7, Lcom/android/mms/ui/WPMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/WPMessageListAdapter;

    invoke-virtual {v7, v6, v1, v2, v0}, Lcom/android/mms/ui/WPMessageListAdapter;->getCachedMessageItem(IJLandroid/database/Cursor;)Lcom/android/mms/ui/WPMessageItem;

    move-result-object v3

    .line 1179
    .local v3, msgItem:Lcom/android/mms/ui/WPMessageItem;
    invoke-virtual {v3}, Lcom/android/mms/ui/WPMessageItem;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1180
    iget-object v7, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mCheckedPosition:Ljava/util/HashSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1181
    iget-object v7, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mSelectedMsgIds:Ljava/util/HashSet;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1174
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1184
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #msgId:J
    .end local v3           #msgItem:Lcom/android/mms/ui/WPMessageItem;
    .end local v6           #type:I
    :cond_1
    iget-object v7, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mCheckedPosition:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    iput v7, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mCheckedNum:I

    .line 1185
    iget-object v7, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mSelectionTitle:Landroid/widget/Button;

    iget-object v8, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    invoke-virtual {v8}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0001

    iget v10, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mCheckedNum:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    iget v12, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mCheckedNum:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1187
    invoke-direct {p0}, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->updateSelectionTitle()V

    .line 1188
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 1085
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1100
    iget-object v1, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mCheckedPosition:Ljava/util/HashSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mCheckedPosition:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1101
    iget-object v1, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mCheckedPosition:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 1105
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 1087
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mSelectedMsgIds:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1090
    new-instance v0, Lcom/android/mms/ui/WPMessageActivity$DeleteMessageListener;

    iget-object v1, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    iget-object v2, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mSelectedMsgIds:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    #getter for: Lcom/android/mms/ui/WPMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;
    invoke-static {v3}, Lcom/android/mms/ui/WPMessageActivity;->access$100(Lcom/android/mms/ui/WPMessageActivity;)Lcom/android/mms/ui/WPMessageActivity$BackgroundQueryHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/WPMessageActivity$DeleteMessageListener;-><init>(Lcom/android/mms/ui/WPMessageActivity;Ljava/util/HashSet;Landroid/content/AsyncQueryHandler;Landroid/content/Context;Landroid/view/ActionMode;)V

    .line 1092
    .local v0, l:Lcom/android/mms/ui/WPMessageActivity$DeleteMessageListener;
    iget-object v1, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mSelectedMsgIds:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/WPMessageActivity;->confirmDeleteMessageDialog(Lcom/android/mms/ui/WPMessageActivity$DeleteMessageListener;Ljava/util/HashSet;Landroid/content/Context;)V

    goto :goto_0

    .line 1095
    .end local v0           #l:Lcom/android/mms/ui/WPMessageActivity$DeleteMessageListener;
    :cond_1
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1085
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4
    .parameter "mode"
    .parameter "menu"

    .prologue
    const v2, 0x7f0b023f

    const/4 v3, 0x0

    .line 1038
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mSelectedMsgIds:Ljava/util/HashSet;

    .line 1039
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mCheckedPosition:Ljava/util/HashSet;

    .line 1043
    const/16 v0, 0x9

    invoke-interface {p2, v3, v0, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200d0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->deleteitem:Landroid/view/MenuItem;

    .line 1046
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->deleteitem:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1047
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040019

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    .line 1050
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v1, 0x7f0f007d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mSelectionTitle:Landroid/widget/Button;

    .line 1053
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 1054
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mSelectionTitle:Landroid/widget/Button;

    const v1, 0x7f0b032e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1055
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    #getter for: Lcom/android/mms/ui/WPMessageActivity;->mMsgListView:Lcom/android/mms/ui/WPMessageListView;
    invoke-static {v0}, Lcom/android/mms/ui/WPMessageActivity;->access$1200(Lcom/android/mms/ui/WPMessageActivity;)Lcom/android/mms/ui/WPMessageListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setLongClickable(Z)V

    .line 1056
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x0

    .line 1109
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/WPMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/WPMessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mCheckedPosition:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/WPMessageListAdapter;->uncheckSelect(Ljava/util/HashSet;)V

    .line 1110
    iput-object v2, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mCheckedPosition:Ljava/util/HashSet;

    .line 1111
    iput-object v2, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mSelectedMsgIds:Ljava/util/HashSet;

    .line 1112
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    #getter for: Lcom/android/mms/ui/WPMessageActivity;->mMsgListView:Lcom/android/mms/ui/WPMessageListView;
    invoke-static {v0}, Lcom/android/mms/ui/WPMessageActivity;->access$1200(Lcom/android/mms/ui/WPMessageActivity;)Lcom/android/mms/ui/WPMessageListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    .line 1113
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mCheckedNum:I

    .line 1114
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    #setter for: Lcom/android/mms/ui/WPMessageActivity;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v2}, Lcom/android/mms/ui/WPMessageActivity;->access$302(Lcom/android/mms/ui/WPMessageActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 1115
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/WPMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/WPMessageListAdapter;

    if-eqz v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/WPMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/WPMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/WPMessageListAdapter;->notifyDataSetChanged()V

    .line 1118
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 1061
    iget-object v2, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 1062
    iget-object v2, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040019

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1064
    .local v1, v:Landroid/view/ViewGroup;
    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 1065
    iget-object v2, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f0f007d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mSelectionTitle:Landroid/widget/Button;

    .line 1068
    .end local v1           #v:Landroid/view/ViewGroup;
    :cond_0
    new-instance v0, Lcom/android/mms/ui/CustomMenu;

    iget-object v2, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    invoke-direct {v0, v2}, Lcom/android/mms/ui/CustomMenu;-><init>(Landroid/content/Context;)V

    .line 1069
    .local v0, customMenu:Lcom/android/mms/ui/CustomMenu;
    iget-object v2, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mSelectionTitle:Landroid/widget/Button;

    const v3, 0x7f0e0008

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/ui/CustomMenu;->addDropDownMenu(Landroid/widget/Button;I)Lcom/android/mms/ui/CustomMenu$DropDownMenu;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mSelectionMenu:Lcom/android/mms/ui/CustomMenu$DropDownMenu;

    .line 1070
    iget-object v2, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mSelectionMenu:Lcom/android/mms/ui/CustomMenu$DropDownMenu;

    const v3, 0x7f0f01d0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/CustomMenu$DropDownMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mSelectionMenuItem:Landroid/view/MenuItem;

    .line 1071
    new-instance v2, Lcom/android/mms/ui/WPMessageActivity$ModeCallback$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/WPMessageActivity$ModeCallback$1;-><init>(Lcom/android/mms/ui/WPMessageActivity$ModeCallback;)V

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/CustomMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1081
    const/4 v2, 0x1

    return v2
.end method

.method public setItemChecked(IZ)V
    .locals 12
    .parameter "position"
    .parameter "checked"

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 1121
    iget-object v5, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    #getter for: Lcom/android/mms/ui/WPMessageActivity;->mMsgListView:Lcom/android/mms/ui/WPMessageListView;
    invoke-static {v5}, Lcom/android/mms/ui/WPMessageActivity;->access$1200(Lcom/android/mms/ui/WPMessageActivity;)Lcom/android/mms/ui/WPMessageListView;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1122
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v5, 0x6

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1123
    .local v4, type:I
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1124
    .local v1, msgId:J
    iget-object v5, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    iget-object v5, v5, Lcom/android/mms/ui/WPMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/WPMessageListAdapter;

    invoke-virtual {v5, v4, v1, v2, v0}, Lcom/android/mms/ui/WPMessageListAdapter;->getCachedMessageItem(IJLandroid/database/Cursor;)Lcom/android/mms/ui/WPMessageItem;

    move-result-object v3

    .line 1125
    .local v3, msgItem:Lcom/android/mms/ui/WPMessageItem;
    invoke-virtual {v3}, Lcom/android/mms/ui/WPMessageItem;->isChecked()Z

    move-result v5

    if-ne p2, v5, :cond_0

    .line 1152
    :goto_0
    return-void

    .line 1128
    :cond_0
    invoke-virtual {v3, p2}, Lcom/android/mms/ui/WPMessageItem;->setIsChecked(Z)V

    .line 1129
    if-eqz p2, :cond_3

    .line 1130
    iget-object v5, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mSelectedMsgIds:Ljava/util/HashSet;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1131
    iget-object v5, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mCheckedPosition:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1132
    iget v5, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mCheckedNum:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mCheckedNum:I

    .line 1139
    :goto_1
    iget-object v5, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->deleteitem:Landroid/view/MenuItem;

    if-eqz v5, :cond_1

    .line 1140
    iget v5, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mCheckedNum:I

    if-lez v5, :cond_4

    .line 1141
    iget-object v5, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->deleteitem:Landroid/view/MenuItem;

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1146
    :cond_1
    :goto_2
    iget v5, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mCheckedNum:I

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    #getter for: Lcom/android/mms/ui/WPMessageActivity;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v5}, Lcom/android/mms/ui/WPMessageActivity;->access$300(Lcom/android/mms/ui/WPMessageActivity;)Landroid/view/ActionMode;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1147
    iget-object v5, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    #getter for: Lcom/android/mms/ui/WPMessageActivity;->mActionMode:Landroid/view/ActionMode;
    invoke-static {v5}, Lcom/android/mms/ui/WPMessageActivity;->access$300(Lcom/android/mms/ui/WPMessageActivity;)Landroid/view/ActionMode;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ActionMode;->finish()V

    .line 1149
    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mSelectionTitle:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0001

    iget v8, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mCheckedNum:I

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mCheckedNum:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1151
    invoke-direct {p0}, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->updateSelectionTitle()V

    goto :goto_0

    .line 1134
    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mSelectedMsgIds:Ljava/util/HashSet;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1135
    iget-object v5, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mCheckedPosition:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1136
    iget v5, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mCheckedNum:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->mCheckedNum:I

    goto :goto_1

    .line 1143
    :cond_4
    iget-object v5, p0, Lcom/android/mms/ui/WPMessageActivity$ModeCallback;->deleteitem:Landroid/view/MenuItem;

    invoke-interface {v5, v11}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method
