.class Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->eh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic tN:Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;


# direct methods
.method constructor <init>(Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$2;->tN:Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 130
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "caller_is_syncadapter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=true"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 131
    .local v17, rawContact:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$2;->tN:Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;

    invoke-static {v2}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->b(Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 132
    move-object/from16 v0, p0

    iget-object v2, v0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$2;->tN:Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;

    invoke-static {v2}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->b(Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://contacts/people/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 133
    move-object/from16 v0, p0

    iget-object v2, v0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$2;->tN:Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;

    invoke-static {v2}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->b(Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$2;->tN:Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;

    invoke-static {v2}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->b(Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://sms/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 135
    move-object/from16 v0, p0

    iget-object v2, v0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$2;->tN:Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;

    invoke-static {v2}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->b(Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://mms/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 142
    .end local v17           #rawContact:Ljava/lang/String;
    :goto_0
    :try_start_1
    const-class v2, Ltmsdk/bg/module/aresengine/AresEngineManager;

    invoke-static {v2}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v2

    check-cast v2, Ltmsdk/bg/module/aresengine/AresEngineManager;

    invoke-virtual {v2}, Ltmsdk/bg/module/aresengine/AresEngineManager;->getAresEngineFactor()Ltmsdk/bg/module/aresengine/AresEngineFactor;

    move-result-object v2

    invoke-virtual {v2}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getSysDao()Ltmsdk/common/module/aresengine/AbsSysDao;

    move-result-object v2

    invoke-virtual {v2}, Ltmsdk/common/module/aresengine/AbsSysDao;->getSimContact()Ljava/util/List;

    move-result-object v11

    .line 143
    .local v11, contacts:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/aresengine/ContactEntity;>;"
    if-eqz v11, :cond_0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 144
    const-string v2, "content://icc/adn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 145
    .local v18, uri:Landroid/net/Uri;
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ltmsdk/common/module/aresengine/ContactEntity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 147
    .local v14, entity:Ltmsdk/common/module/aresengine/ContactEntity;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v14, Ltmsdk/common/module/aresengine/ContactEntity;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 148
    .local v19, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$2;->tN:Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;

    invoke-static {v2}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->b(Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 149
    .end local v19           #where:Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 150
    .local v13, e:Ljava/lang/Exception;
    :try_start_3
    const-string v2, "AntitheftCommandExecutor"

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ltmsdk/common/utils/Log;->f(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 154
    .end local v11           #contacts:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/aresengine/ContactEntity;>;"
    .end local v13           #e:Ljava/lang/Exception;
    .end local v14           #entity:Ltmsdk/common/module/aresengine/ContactEntity;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v18           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v13

    .line 155
    .restart local v13       #e:Ljava/lang/Exception;
    const-string v2, "AntitheftCommandExecutor"

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ltmsdk/common/utils/Log;->f(Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    .end local v13           #e:Ljava/lang/Exception;
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ltmsdkobf/jv;->bY(Ljava/lang/String;)Z

    .line 159
    invoke-static {}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->getStorageDirectories()Ljava/util/ArrayList;

    move-result-object v15

    .line 160
    .local v15, extDirs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 161
    .local v12, dir:Ljava/lang/String;
    invoke-static {v12}, Ltmsdkobf/jv;->bY(Ljava/lang/String;)Z

    goto :goto_2

    .line 136
    .end local v12           #dir:Ljava/lang/String;
    .end local v15           #extDirs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v16           #i$:Ljava/util/Iterator;
    :catch_2
    move-exception v13

    .line 137
    .restart local v13       #e:Ljava/lang/Exception;
    const-string v2, "AntitheftCommandExecutor"

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ltmsdk/common/utils/Log;->f(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 164
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v15       #extDirs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16       #i$:Ljava/util/Iterator;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$2;->tN:Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;

    invoke-static {v2}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->c(Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;)Ltmsdk/common/module/antitheft/AntitheftCommand;

    move-result-object v2

    iget-boolean v2, v2, Ltmsdk/common/module/antitheft/AntitheftCommand;->mIsFromWebServer:Z

    if-nez v2, :cond_2

    .line 165
    move-object/from16 v0, p0

    iget-object v2, v0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$2;->tN:Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;

    invoke-static {v2}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->c(Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;)Ltmsdk/common/module/antitheft/AntitheftCommand;

    move-result-object v2

    iget-object v2, v2, Ltmsdk/common/module/antitheft/AntitheftCommand;->mRemotePhoneNum:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$2;->tN:Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;

    invoke-static {v3}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->d(Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;)Ltmsdk/bg/module/antitheft/IAntitheftCommandExecutorObserver;

    move-result-object v3

    invoke-interface {v3}, Ltmsdk/bg/module/antitheft/IAntitheftCommandExecutorObserver;->tips4DeleteDataSuccess()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$2;->tN:Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;

    invoke-static {v4}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->b(Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ltmsdk/common/utils/SMSUtil;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 168
    :goto_3
    return-void

    .line 167
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$2;->tN:Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;

    move-object/from16 v0, p0

    iget-object v3, v0, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor$2;->tN:Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;

    invoke-static {v3}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->c(Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;)Ltmsdk/common/module/antitheft/AntitheftCommand;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    invoke-static/range {v2 .. v10}, Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;->a(Ltmsdk/bg/module/antitheft/AntitheftCommandExecutor;Ltmsdk/common/module/antitheft/AntitheftCommand;SDDD)V

    goto :goto_3
.end method
