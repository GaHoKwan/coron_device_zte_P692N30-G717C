.class public Lcom/mediatek/email/emailvip/VipNotificationStyle;
.super Ljava/lang/Object;
.source "VipNotificationStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/email/emailvip/VipNotificationStyle$VIPIconRequest;
    }
.end annotation


# instance fields
.field private mVIPIconRequest:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/email/emailvip/VipNotificationStyle$VIPIconRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mVipMessageIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/email/emailvip/VipNotificationStyle;->mVIPIconRequest:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/email/emailvip/VipNotificationStyle;->mVipMessageIds:Ljava/util/ArrayList;

    .line 30
    return-void
.end method

.method private builderSelectIds(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 4
    .parameter "c"
    .parameter "icColumnIndex"

    .prologue
    .line 122
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-gtz v3, :cond_1

    .line 123
    :cond_0
    const/4 v3, 0x0

    .line 136
    :goto_0
    return-object v3

    .line 125
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .local v0, idBuilder:Ljava/lang/StringBuilder;
    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 128
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 129
    .local v1, messageId:J
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 130
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 131
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 132
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 135
    :cond_2
    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "obj"
    .parameter "fieldName"

    .prologue
    .line 255
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mediatek/email/emailvip/VipNotificationStyle;->getValue(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getValue(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 6
    .parameter "obj"
    .parameter "fieldName"
    .parameter "inSuperClass"

    .prologue
    const/4 v2, 0x0

    .line 266
    const/4 v1, 0x0

    .line 268
    .local v1, field:Ljava/lang/reflect/Field;
    if-eqz p2, :cond_0

    .line 269
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 278
    :goto_0
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 279
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 285
    :goto_1
    return-object v2

    .line 271
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, e:Ljava/lang/NoSuchFieldException;
    const-string v3, "VIP_Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDeclaredField failed because has no "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 280
    .end local v0           #e:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 281
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "VIP_Settings"

    const-string v4, "get value failed because IllegalArgumentException"

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 282
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 283
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v3, "VIP_Settings"

    const-string v4, "get value failed because IllegalAccessException"

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getVipIconRequest(Ljava/lang/CharSequence;)Lcom/mediatek/email/emailvip/VipNotificationStyle$VIPIconRequest;
    .locals 3
    .parameter "text"

    .prologue
    .line 240
    iget-object v2, p0, Lcom/mediatek/email/emailvip/VipNotificationStyle;->mVIPIconRequest:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/email/emailvip/VipNotificationStyle$VIPIconRequest;

    .line 241
    .local v1, req:Lcom/mediatek/email/emailvip/VipNotificationStyle$VIPIconRequest;
    iget-object v2, v1, Lcom/mediatek/email/emailvip/VipNotificationStyle$VIPIconRequest;->mVipString:Ljava/lang/CharSequence;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 245
    .end local v1           #req:Lcom/mediatek/email/emailvip/VipNotificationStyle$VIPIconRequest;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateVipIcon(Landroid/widget/RemoteViews;I)V
    .locals 23
    .parameter "remoteViews"
    .parameter "iconId"

    .prologue
    .line 166
    if-nez p1, :cond_1

    .line 206
    :cond_0
    return-void

    .line 169
    :cond_1
    const/4 v13, 0x0

    .line 171
    .local v13, actionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :try_start_0
    const-string v2, "mActions"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/mediatek/email/emailvip/VipNotificationStyle;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #actionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    check-cast v13, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .restart local v13       #actionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :goto_0
    if-eqz v13, :cond_0

    .line 180
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 181
    .local v15, cloneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    .line 183
    .local v19, obj:Ljava/lang/Object;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    .line 184
    .local v14, className:Ljava/lang/String;
    const-string v2, "ReflectionAction"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 188
    const-string v2, "methodName"

    move-object/from16 v0, v19

    invoke-static {v0, v2}, Lcom/mediatek/email/emailvip/VipNotificationStyle;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 189
    .local v18, method:Ljava/lang/String;
    const-string v2, "setText"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 193
    const-string v2, "value"

    move-object/from16 v0, v19

    invoke-static {v0, v2}, Lcom/mediatek/email/emailvip/VipNotificationStyle;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/CharSequence;

    .line 194
    .local v21, text:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/mediatek/email/emailvip/VipNotificationStyle;->getVipIconRequest(Ljava/lang/CharSequence;)Lcom/mediatek/email/emailvip/VipNotificationStyle$VIPIconRequest;

    move-result-object v20

    .line 197
    .local v20, req:Lcom/mediatek/email/emailvip/VipNotificationStyle$VIPIconRequest;
    const-string v2, "viewId"

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-static {v0, v2, v3}, Lcom/mediatek/email/emailvip/VipNotificationStyle;->getValue(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    .line 198
    .local v22, viewId:Ljava/lang/Integer;
    if-eqz v20, :cond_5

    if-eqz v22, :cond_5

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_5

    .line 199
    move-object/from16 v0, v20

    iget v2, v0, Lcom/mediatek/email/emailvip/VipNotificationStyle$VIPIconRequest;->mIconPosition:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    move/from16 v4, p2

    .line 200
    .local v4, leftIconid:I
    :goto_2
    move-object/from16 v0, v20

    iget v2, v0, Lcom/mediatek/email/emailvip/VipNotificationStyle$VIPIconRequest;->mIconPosition:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    move/from16 v6, p2

    .line 201
    .local v6, rightIconid:I
    :goto_3
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawables(IIIII)V

    goto :goto_1

    .line 172
    .end local v4           #leftIconid:I
    .end local v6           #rightIconid:I
    .end local v13           #actionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v14           #className:Ljava/lang/String;
    .end local v15           #cloneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v18           #method:Ljava/lang/String;
    .end local v19           #obj:Ljava/lang/Object;
    .end local v20           #req:Lcom/mediatek/email/emailvip/VipNotificationStyle$VIPIconRequest;
    .end local v21           #text:Ljava/lang/CharSequence;
    .end local v22           #viewId:Ljava/lang/Integer;
    :catch_0
    move-exception v16

    .line 173
    .local v16, e:Ljava/lang/Exception;
    const-string v2, "VIP_Settings"

    const-string v3, "The mActions of remoteViews may be not ArrayList"

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const/4 v13, 0x0

    .restart local v13       #actionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    goto/16 :goto_0

    .line 199
    .end local v16           #e:Ljava/lang/Exception;
    .restart local v14       #className:Ljava/lang/String;
    .restart local v15       #cloneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v17       #i$:Ljava/util/Iterator;
    .restart local v18       #method:Ljava/lang/String;
    .restart local v19       #obj:Ljava/lang/Object;
    .restart local v20       #req:Lcom/mediatek/email/emailvip/VipNotificationStyle$VIPIconRequest;
    .restart local v21       #text:Ljava/lang/CharSequence;
    .restart local v22       #viewId:Ljava/lang/Integer;
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 200
    .restart local v4       #leftIconid:I
    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    .line 202
    .end local v4           #leftIconid:I
    :cond_5
    if-eqz v22, :cond_2

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_2

    .line 203
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/widget/RemoteViews;->setTextViewCompoundDrawables(IIIII)V

    goto/16 :goto_1
.end method

.method private updateVipSoundAndVibration(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 4
    .parameter "context"
    .parameter "n"

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/mediatek/email/emailvip/VipNotificationStyle;->hasVip()Z

    move-result v3

    if-nez v3, :cond_0

    .line 225
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-static {p1}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/Preferences;->getVipRingtone()Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, ringtoneUri:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/Preferences;->getVipVebarate()Z

    move-result v2

    .line 218
    .local v2, vipVibrate:Z
    if-eqz v2, :cond_1

    .line 219
    const/4 v0, 0x4

    .line 220
    .local v0, defaults:I
    or-int/lit8 v0, v0, 0x2

    .line 221
    iput v0, p2, Landroid/app/Notification;->defaults:I

    .line 223
    .end local v0           #defaults:I
    :cond_1
    const/4 v3, -0x1

    iput v3, p2, Landroid/app/Notification;->audioStreamType:I

    .line 224
    if-nez v1, :cond_2

    const/4 v3, 0x0

    :goto_1
    iput-object v3, p2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_0

    :cond_2
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1
.end method

.method public static updateVipSoundAndVibration(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    .locals 3
    .parameter "context"
    .parameter "account"

    .prologue
    .line 229
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/Preferences;->getVipRingtone()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, ringtoneUri:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/Preferences;->getVipVebarate()Z

    move-result v1

    .line 231
    .local v1, vipVibrate:Z
    if-eqz v1, :cond_1

    .line 232
    iget v2, p1, Lcom/android/emailcommon/provider/Account;->mFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p1, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 236
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .end local v0           #ringtoneUri:Ljava/lang/String;
    :cond_0
    iput-object v0, p1, Lcom/android/emailcommon/provider/Account;->mRingtoneUri:Ljava/lang/String;

    .line 237
    return-void

    .line 234
    .restart local v0       #ringtoneUri:Ljava/lang/String;
    :cond_1
    iget v2, p1, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p1, Lcom/android/emailcommon/provider/Account;->mFlags:I

    goto :goto_0
.end method


# virtual methods
.method public addVipTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 115
    new-instance v0, Lcom/mediatek/email/emailvip/VipNotificationStyle$VIPIconRequest;

    invoke-direct {v0}, Lcom/mediatek/email/emailvip/VipNotificationStyle$VIPIconRequest;-><init>()V

    .line 116
    .local v0, request:Lcom/mediatek/email/emailvip/VipNotificationStyle$VIPIconRequest;
    const/4 v1, 0x1

    iput v1, v0, Lcom/mediatek/email/emailvip/VipNotificationStyle$VIPIconRequest;->mIconPosition:I

    .line 117
    iput-object p1, v0, Lcom/mediatek/email/emailvip/VipNotificationStyle$VIPIconRequest;->mVipString:Ljava/lang/CharSequence;

    .line 118
    iget-object v1, p0, Lcom/mediatek/email/emailvip/VipNotificationStyle;->mVIPIconRequest:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    return-void
.end method

.method public checkVipMessage(JLjava/lang/CharSequence;)V
    .locals 3
    .parameter "messageId"
    .parameter "VipString"

    .prologue
    .line 104
    iget-object v1, p0, Lcom/mediatek/email/emailvip/VipNotificationStyle;->mVipMessageIds:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    new-instance v0, Lcom/mediatek/email/emailvip/VipNotificationStyle$VIPIconRequest;

    invoke-direct {v0}, Lcom/mediatek/email/emailvip/VipNotificationStyle$VIPIconRequest;-><init>()V

    .line 106
    .local v0, request:Lcom/mediatek/email/emailvip/VipNotificationStyle$VIPIconRequest;
    const/4 v1, 0x1

    iput v1, v0, Lcom/mediatek/email/emailvip/VipNotificationStyle$VIPIconRequest;->mIconPosition:I

    .line 107
    iput-object p3, v0, Lcom/mediatek/email/emailvip/VipNotificationStyle$VIPIconRequest;->mVipString:Ljava/lang/CharSequence;

    .line 108
    iget-object v1, p0, Lcom/mediatek/email/emailvip/VipNotificationStyle;->mVIPIconRequest:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .end local v0           #request:Lcom/mediatek/email/emailvip/VipNotificationStyle$VIPIconRequest;
    :cond_0
    return-void
.end method

.method public checkVips(Landroid/content/Context;JLjava/lang/String;ZLjava/lang/CharSequence;Landroid/database/Cursor;)V
    .locals 15
    .parameter "context"
    .parameter "accountId"
    .parameter "fromList"
    .parameter "multipleUnseen"
    .parameter "title"
    .parameter "messageCursor"

    .prologue
    .line 49
    if-nez p5, :cond_1

    .line 50
    invoke-static/range {p4 .. p4}, Lcom/mediatek/email/emailvip/VipMemberCache;->isVIP(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    new-instance v14, Lcom/mediatek/email/emailvip/VipNotificationStyle$VIPIconRequest;

    invoke-direct {v14}, Lcom/mediatek/email/emailvip/VipNotificationStyle$VIPIconRequest;-><init>()V

    .line 52
    .local v14, request:Lcom/mediatek/email/emailvip/VipNotificationStyle$VIPIconRequest;
    const/4 v1, 0x1

    iput v1, v14, Lcom/mediatek/email/emailvip/VipNotificationStyle$VIPIconRequest;->mIconPosition:I

    .line 53
    move-object/from16 v0, p6

    iput-object v0, v14, Lcom/mediatek/email/emailvip/VipNotificationStyle$VIPIconRequest;->mVipString:Ljava/lang/CharSequence;

    .line 54
    iget-object v1, p0, Lcom/mediatek/email/emailvip/VipNotificationStyle;->mVIPIconRequest:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v14           #request:Lcom/mediatek/email/emailvip/VipNotificationStyle$VIPIconRequest;
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    if-eqz p7, :cond_0

    .line 62
    const/4 v8, 0x0

    .line 64
    .local v8, hasVip:Z
    invoke-interface/range {p7 .. p7}, Landroid/database/Cursor;->getPosition()I

    move-result v13

    .line 65
    .local v13, originalPosition:I
    const/4 v1, 0x0

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/mediatek/email/emailvip/VipNotificationStyle;->builderSelectIds(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v11

    .line 66
    .local v11, ids:Ljava/lang/String;
    move-object/from16 v0, p7

    invoke-interface {v0, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 67
    const/4 v12, 0x0

    .line 69
    .local v12, newMessages:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "fromList"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "_id DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 72
    if-nez v12, :cond_2

    .line 84
    if-eqz v12, :cond_0

    .line 85
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 75
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 76
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 77
    .local v9, id:J
    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 78
    .local v7, from:Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/email/emailvip/VipMemberCache;->isVIP(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    const/4 v8, 0x1

    .line 80
    iget-object v1, p0, Lcom/mediatek/email/emailvip/VipNotificationStyle;->mVipMessageIds:Ljava/util/ArrayList;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 84
    .end local v7           #from:Ljava/lang/String;
    .end local v9           #id:J
    :catchall_0
    move-exception v1

    if-eqz v12, :cond_3

    .line 85
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .line 84
    :cond_4
    if-eqz v12, :cond_5

    .line 85
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 89
    :cond_5
    if-eqz v8, :cond_0

    .line 91
    new-instance v14, Lcom/mediatek/email/emailvip/VipNotificationStyle$VIPIconRequest;

    invoke-direct {v14}, Lcom/mediatek/email/emailvip/VipNotificationStyle$VIPIconRequest;-><init>()V

    .line 92
    .restart local v14       #request:Lcom/mediatek/email/emailvip/VipNotificationStyle$VIPIconRequest;
    const/4 v1, 0x1

    iput v1, v14, Lcom/mediatek/email/emailvip/VipNotificationStyle$VIPIconRequest;->mIconPosition:I

    .line 93
    move-object/from16 v0, p6

    iput-object v0, v14, Lcom/mediatek/email/emailvip/VipNotificationStyle$VIPIconRequest;->mVipString:Ljava/lang/CharSequence;

    .line 94
    iget-object v1, p0, Lcom/mediatek/email/emailvip/VipNotificationStyle;->mVIPIconRequest:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public hasVip()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/mediatek/email/emailvip/VipNotificationStyle;->mVIPIconRequest:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setupVipNotification(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 0
    .parameter "context"
    .parameter "notification"

    .prologue
    .line 147
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/email/emailvip/VipNotificationStyle;->updateVipIcon(Landroid/content/Context;Landroid/app/Notification;)V

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/mediatek/email/emailvip/VipNotificationStyle;->updateVipSoundAndVibration(Landroid/content/Context;Landroid/app/Notification;)V

    .line 149
    return-void
.end method

.method public updateVipIcon(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 2
    .parameter "context"
    .parameter "notification"

    .prologue
    .line 157
    const v0, 0x7f02004e

    .line 158
    .local v0, vipIconId:I
    iget-object v1, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v1, v0}, Lcom/mediatek/email/emailvip/VipNotificationStyle;->updateVipIcon(Landroid/widget/RemoteViews;I)V

    .line 159
    iget-object v1, p2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-direct {p0, v1, v0}, Lcom/mediatek/email/emailvip/VipNotificationStyle;->updateVipIcon(Landroid/widget/RemoteViews;I)V

    .line 160
    invoke-virtual {p0}, Lcom/mediatek/email/emailvip/VipNotificationStyle;->hasVip()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    const v1, 0x7f02007a

    iput v1, p2, Landroid/app/Notification;->icon:I

    .line 163
    :cond_0
    return-void
.end method
