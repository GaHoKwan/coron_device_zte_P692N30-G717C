.class Lcom/android/contacts/calllog/CallLogFragment$4;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/calllog/CallLogFragment;->showChoiceResourceDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/calllog/CallLogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1179
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogFragment$4;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1182
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1183
    iget-object v10, p0, Lcom/android/contacts/calllog/CallLogFragment$4;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-virtual {v10}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1185
    .local v6, prefs:Landroid/content/SharedPreferences;
    const-string v10, "calllog_sim_filter"

    const/4 v11, -0x1

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1186
    .local v5, oriSim:I
    iget-object v10, p0, Lcom/android/contacts/calllog/CallLogFragment$4;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-virtual {v10}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    move-object v0, p1

    .line 1189
    check-cast v0, Landroid/app/AlertDialog;

    .line 1190
    .local v0, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v10

    invoke-interface {v10, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    .line 1192
    .local v4, obj:Ljava/lang/Object;
    const-string v10, "CallLogFragment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "showChoiceResourceDialog OnClick oriSim:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " return:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    const/4 v7, 0x0

    .line 1195
    .local v7, resId:I
    instance-of v10, v4, Ljava/lang/String;

    if-eqz v10, :cond_1

    .line 1196
    const v7, 0x7f0c0014

    .line 1208
    .end local v4           #obj:Ljava/lang/Object;
    :cond_0
    :goto_0
    const-wide/16 v2, -0x5

    .line 1212
    .local v2, newsimid:J
    invoke-static {v7}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getSlotIdFromSimResId(I)I

    move-result v9

    .line 1213
    .local v9, slotId:I
    invoke-static {v9}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isSlotValid(I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1214
    invoke-static {v9}, Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper;->getSimIdBySlotID(I)I

    move-result v8

    .line 1215
    .local v8, simId:I
    if-ne v5, v8, :cond_4

    .line 1216
    const-string v10, "CallLogFragment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The current sim "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    .end local v8           #simId:I
    :goto_1
    return-void

    .line 1197
    .end local v2           #newsimid:J
    .end local v9           #slotId:I
    .restart local v4       #obj:Ljava/lang/Object;
    :cond_1
    instance-of v10, v4, Ljava/lang/Integer;

    if-eqz v10, :cond_0

    move-object v10, v4

    .line 1198
    check-cast v10, Ljava/lang/Integer;

    const/4 v11, -0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    if-ne v10, v11, :cond_2

    .line 1200
    const v7, 0x7f0c0019

    goto :goto_0

    :cond_2
    move-object v10, v4

    .line 1201
    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isSlotValid(I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1202
    check-cast v4, Ljava/lang/Integer;

    .end local v4           #obj:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getResIdForSlot(I)I

    move-result v7

    goto :goto_0

    .line 1204
    .restart local v4       #obj:Ljava/lang/Object;
    :cond_3
    const-string v10, "CallLogFragment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OnClick Error! return:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    check-cast v4, Ljava/lang/Integer;

    .end local v4           #obj:Ljava/lang/Object;
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1219
    .restart local v2       #newsimid:J
    .restart local v8       #simId:I
    .restart local v9       #slotId:I
    :cond_4
    const-string v10, "calllog_sim_filter"

    invoke-interface {v1, v10, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1220
    int-to-long v2, v8

    .line 1247
    .end local v8           #simId:I
    :goto_2
    const-string v10, "CallLogFragment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "showChoiceResourceDialog OnClick user selected:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1249
    iget-object v10, p0, Lcom/android/contacts/calllog/CallLogFragment$4;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #calls: Lcom/android/contacts/calllog/CallLogFragment;->updateCallLogNotice()V
    invoke-static {v10}, Lcom/android/contacts/calllog/CallLogFragment;->access$1300(Lcom/android/contacts/calllog/CallLogFragment;)V

    .line 1250
    iget-object v10, p0, Lcom/android/contacts/calllog/CallLogFragment$4;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    const/4 v11, 0x1

    #setter for: Lcom/android/contacts/calllog/CallLogFragment;->mRefreshDataRequired:Z
    invoke-static {v10, v11}, Lcom/android/contacts/calllog/CallLogFragment;->access$002(Lcom/android/contacts/calllog/CallLogFragment;Z)Z

    .line 1251
    iget-object v10, p0, Lcom/android/contacts/calllog/CallLogFragment$4;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #calls: Lcom/android/contacts/calllog/CallLogFragment;->refreshData()V
    invoke-static {v10}, Lcom/android/contacts/calllog/CallLogFragment;->access$1400(Lcom/android/contacts/calllog/CallLogFragment;)V

    goto :goto_1

    .line 1223
    :cond_5
    const-string v10, "CallLogFragment"

    const-string v11, "current res is not sim"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    sparse-switch v7, :sswitch_data_0

    .line 1242
    const-string v10, "CallLogFragment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unexpected resource: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/contacts/calllog/CallLogFragment$4;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-virtual {v12}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1226
    :sswitch_0
    const/16 v10, 0x4e25

    if-ne v5, v10, :cond_6

    .line 1227
    const-string v10, "CallLogFragment"

    const-string v11, "The current sim 20005"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1230
    :cond_6
    const-string v10, "calllog_sim_filter"

    const/16 v11, 0x4e25

    invoke-interface {v1, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1231
    const-wide/16 v2, 0x4e25

    .line 1232
    goto :goto_2

    .line 1234
    :sswitch_1
    const/16 v10, 0x4e24

    if-ne v5, v10, :cond_7

    .line 1235
    const-string v10, "CallLogFragment"

    const-string v11, "The current sim 20004"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1238
    :cond_7
    const-string v10, "calllog_sim_filter"

    const/16 v11, 0x4e24

    invoke-interface {v1, v10, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1239
    const-wide/16 v2, 0x4e24

    .line 1240
    goto/16 :goto_2

    .line 1224
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0014 -> :sswitch_0
        0x7f0c0019 -> :sswitch_1
    .end sparse-switch
.end method
