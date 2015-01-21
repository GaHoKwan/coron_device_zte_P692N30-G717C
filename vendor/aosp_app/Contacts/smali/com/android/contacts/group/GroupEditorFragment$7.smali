.class Lcom/android/contacts/group/GroupEditorFragment$7;
.super Ljava/lang/Object;
.source "GroupEditorFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private mPosition:I

.field private mRawContactId:J

.field final synthetic this$0:Lcom/android/contacts/group/GroupEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/group/GroupEditorFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1964
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment$7;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;
    .locals 8
    .parameter "id"
    .parameter "args"

    .prologue
    const/4 v4, 0x0

    .line 1971
    const-string v0, "memberLookupUri"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1972
    .local v7, memberId:Ljava/lang/String;
    const-string v0, "rawContactId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/group/GroupEditorFragment$7;->mRawContactId:J

    .line 1973
    const-string v0, "position"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/group/GroupEditorFragment$7;->mPosition:I

    .line 1974
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment$7;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/group/GroupEditorFragment;->access$500(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/contacts/group/GroupEditorFragment;->PROJECTION_CONTACT:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1964
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/group/GroupEditorFragment$7;->onCreateLoader(ILandroid/os/Bundle;)Landroid/content/CursorLoader;

    move-result-object v0

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 15
    .parameter
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1981
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment$7;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1982
    const-string v2, "GroupEditorFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onLoadFinished(),This Fragment is not add to the Activity now.data:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    if-eqz p2, :cond_0

    .line 1984
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    .line 2020
    :cond_0
    :goto_0
    return-void

    .line 1990
    :cond_1
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1991
    const-string v2, "GroupEditorFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "#onLoadFinished(),the cursor has no data.cursor count:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, ",mPosition:"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v14, p0, Lcom/android/contacts/group/GroupEditorFragment$7;->mPosition:I

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1993
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment$7;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    const/4 v3, 0x0

    iget v14, p0, Lcom/android/contacts/group/GroupEditorFragment$7;->mPosition:I

    #calls: Lcom/android/contacts/group/GroupEditorFragment;->editMember(Lcom/android/contacts/group/GroupEditorFragment$Member;I)V
    invoke-static {v2, v3, v14}, Lcom/android/contacts/group/GroupEditorFragment;->access$2500(Lcom/android/contacts/group/GroupEditorFragment;Lcom/android/contacts/group/GroupEditorFragment$Member;I)V

    goto :goto_0

    .line 1996
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1997
    .local v5, contactId:J
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1998
    .local v7, displayName:Ljava/lang/String;
    const/16 v2, 0x9

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1999
    .local v4, lookupKey:Ljava/lang/String;
    const/16 v2, 0x8

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2000
    .local v8, photoUri:Ljava/lang/String;
    const/16 v2, 0xe

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 2001
    .local v9, simIndex:I
    const/16 v2, 0xd

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 2003
    .local v11, indexSimOrPhone:I
    const/4 v10, -0x1

    .line 2004
    .local v10, i:I
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment$7;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;
    invoke-static {v2}, Lcom/android/contacts/group/GroupEditorFragment;->access$1000(Lcom/android/contacts/group/GroupEditorFragment;)Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v2

    if-nez v2, :cond_3

    .line 2005
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment$7;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v3

    #setter for: Lcom/android/contacts/group/GroupEditorFragment;->mSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;
    invoke-static {v2, v3}, Lcom/android/contacts/group/GroupEditorFragment;->access$1002(Lcom/android/contacts/group/GroupEditorFragment;Lcom/mediatek/phone/SIMInfoWrapper;)Lcom/mediatek/phone/SIMInfoWrapper;

    .line 2007
    :cond_3
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2008
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment$7;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;
    invoke-static {v2}, Lcom/android/contacts/group/GroupEditorFragment;->access$1000(Lcom/android/contacts/group/GroupEditorFragment;)Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment$7;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mSlotId:I
    invoke-static {v3}, Lcom/android/contacts/group/GroupEditorFragment;->access$1100(Lcom/android/contacts/group/GroupEditorFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v13

    .line 2009
    .local v13, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v13, :cond_4

    .line 2010
    iget v10, v13, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    .line 2013
    .end local v13           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_4
    if-lez v9, :cond_5

    .line 2014
    const/16 v2, 0xf

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 2015
    .local v12, isSdnContact:I
    new-instance v2, Lcom/mediatek/contacts/util/SimContactPhotoUtils;

    invoke-direct {v2}, Lcom/mediatek/contacts/util/SimContactPhotoUtils;-><init>()V

    invoke-virtual {v2, v12, v10}, Lcom/mediatek/contacts/util/SimContactPhotoUtils;->getPhotoUri(II)Ljava/lang/String;

    move-result-object v8

    .line 2017
    .end local v12           #isSdnContact:I
    :cond_5
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment$7;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 2018
    new-instance v1, Lcom/android/contacts/group/GroupEditorFragment$Member;

    iget-wide v2, p0, Lcom/android/contacts/group/GroupEditorFragment$7;->mRawContactId:J

    invoke-direct/range {v1 .. v9}, Lcom/android/contacts/group/GroupEditorFragment$Member;-><init>(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V

    .line 2019
    .local v1, member:Lcom/android/contacts/group/GroupEditorFragment$Member;
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment$7;->this$0:Lcom/android/contacts/group/GroupEditorFragment;

    iget v3, p0, Lcom/android/contacts/group/GroupEditorFragment$7;->mPosition:I

    #calls: Lcom/android/contacts/group/GroupEditorFragment;->editMember(Lcom/android/contacts/group/GroupEditorFragment$Member;I)V
    invoke-static {v2, v1, v3}, Lcom/android/contacts/group/GroupEditorFragment;->access$2500(Lcom/android/contacts/group/GroupEditorFragment;Lcom/android/contacts/group/GroupEditorFragment$Member;I)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1964
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/group/GroupEditorFragment$7;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2024
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method
