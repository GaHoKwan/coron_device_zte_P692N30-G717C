.class Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;
.super Ljava/lang/Object;
.source "CallLogSearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/CallLogSearchSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchSuggestion"
.end annotation


# instance fields
.field callNumberLabel:Ljava/lang/String;

.field callsId:J

.field date:J

.field icon1:Ljava/lang/String;

.field icon2:Ljava/lang/String;

.field isSdnContact:I

.field isVTCall:I

.field mCallsRawContactsId:I

.field private mIcon1:Ljava/lang/String;

.field private mIcon2:Ljava/lang/String;

.field private mIcon3:Ljava/lang/String;

.field private mIcon4:Ljava/lang/String;

.field mPhotoUri:Ljava/lang/String;

.field number:Ljava/lang/String;

.field processed:Z

.field slotId:I

.field sortKey:Ljava/lang/String;

.field text1:Ljava/lang/String;

.field text2:Ljava/lang/String;

.field type:I


# direct methods
.method public constructor <init>(J)V
    .locals 2
    .parameter "callsId"

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->slotId:I

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->isSdnContact:I

    .line 223
    iput-object v1, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->mIcon1:Ljava/lang/String;

    .line 224
    iput-object v1, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->mIcon2:Ljava/lang/String;

    .line 226
    iput-object v1, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->mIcon3:Ljava/lang/String;

    .line 227
    iput-object v1, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->mIcon4:Ljava/lang/String;

    .line 124
    iput-wide p1, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->callsId:J

    .line 125
    return-void
.end method

.method private addColumnValue(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "column"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 204
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v0, "_id"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-wide v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->callsId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    :goto_0
    return-void

    .line 206
    :cond_0
    const-string v0, "suggest_text_1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->text1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 208
    :cond_1
    const-string v0, "suggest_text_2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->text2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    :cond_2
    const-string v0, "suggest_icon_1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 211
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->icon1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 212
    :cond_3
    const-string v0, "suggest_icon_2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 213
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->icon2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 214
    :cond_4
    const-string v0, "suggest_intent_data_id"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 215
    iget-wide v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->callsId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    :cond_5
    const-string v0, "suggest_shortcut_id"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 217
    iget-wide v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->callsId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 219
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid column name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getIcon(II)Ljava/lang/String;
    .locals 11
    .parameter "slotId"
    .parameter "isSdn"

    .prologue
    .line 230
    const-string v7, "CallLogSearchSupport"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " [getIcon] slotId is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isSdn : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v5, 0x0

    .line 234
    .local v5, icon:Ljava/lang/String;
    if-nez p1, :cond_0

    iget-object v7, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->mIcon1:Ljava/lang/String;

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    if-ge p2, v7, :cond_0

    .line 236
    iget-object v7, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->mIcon1:Ljava/lang/String;

    .line 300
    :goto_0
    return-object v7

    .line 237
    :cond_0
    const/4 v7, 0x1

    if-ne p1, v7, :cond_1

    iget-object v7, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->mIcon2:Ljava/lang/String;

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    if-ge p2, v7, :cond_1

    .line 239
    iget-object v7, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->mIcon2:Ljava/lang/String;

    goto :goto_0

    .line 240
    :cond_1
    if-nez p1, :cond_2

    iget-object v7, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->mIcon3:Ljava/lang/String;

    if-eqz v7, :cond_2

    if-lez p2, :cond_2

    .line 242
    iget-object v7, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->mIcon3:Ljava/lang/String;

    goto :goto_0

    .line 243
    :cond_2
    const/4 v7, 0x1

    if-ne p1, v7, :cond_3

    iget-object v7, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->mIcon4:Ljava/lang/String;

    if-eqz v7, :cond_3

    if-lez p2, :cond_3

    .line 245
    iget-object v7, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->mIcon4:Ljava/lang/String;

    goto :goto_0

    .line 248
    :cond_3
    if-ltz p1, :cond_12

    .line 249
    const/4 v4, -0x1

    .line 250
    .local v4, color:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 251
    .local v2, beforInfor:J
    invoke-static {}, Lcom/android/providers/contacts/CallLogSearchSupport;->access$000()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, p1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v6

    .line 252
    .local v6, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 253
    .local v0, afterInfor:J
    const-string v7, "CallLogSearchSupport"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "beforInfor : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " | afterInfor : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " | TIME : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v9, v0, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    if-eqz v6, :cond_4

    .line 256
    iget v4, v6, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    .line 259
    :cond_4
    const-string v7, "CallLogSearchSupport"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[getIcon] color = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    if-lez p2, :cond_a

    .line 262
    if-nez v4, :cond_6

    .line 263
    const v7, 0x7f020006

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 287
    :goto_1
    if-nez p1, :cond_f

    const/4 v7, 0x1

    if-ge p2, v7, :cond_f

    .line 288
    iput-object v5, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->mIcon1:Ljava/lang/String;

    .end local v0           #afterInfor:J
    .end local v2           #beforInfor:J
    .end local v4           #color:I
    .end local v6           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_5
    :goto_2
    move-object v7, v5

    .line 300
    goto/16 :goto_0

    .line 264
    .restart local v0       #afterInfor:J
    .restart local v2       #beforInfor:J
    .restart local v4       #color:I
    .restart local v6       #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_6
    const/4 v7, 0x1

    if-ne v4, v7, :cond_7

    .line 265
    const v7, 0x7f020008

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 266
    :cond_7
    const/4 v7, 0x2

    if-ne v4, v7, :cond_8

    .line 267
    const v7, 0x7f020007

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 268
    :cond_8
    const/4 v7, 0x3

    if-ne v4, v7, :cond_9

    .line 269
    const v7, 0x7f020009

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 271
    :cond_9
    const v7, 0x7f020001

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 274
    :cond_a
    if-nez v4, :cond_b

    .line 275
    const v7, 0x7f02000a

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 276
    :cond_b
    const/4 v7, 0x1

    if-ne v4, v7, :cond_c

    .line 277
    const v7, 0x7f02000c

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 278
    :cond_c
    const/4 v7, 0x2

    if-ne v4, v7, :cond_d

    .line 279
    const v7, 0x7f02000b

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 280
    :cond_d
    const/4 v7, 0x3

    if-ne v4, v7, :cond_e

    .line 281
    const v7, 0x7f02000d

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 283
    :cond_e
    const v7, 0x7f020001

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 289
    :cond_f
    const/4 v7, 0x1

    if-ne p1, v7, :cond_10

    const/4 v7, 0x1

    if-ge p2, v7, :cond_10

    .line 290
    iput-object v5, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->mIcon2:Ljava/lang/String;

    goto :goto_2

    .line 291
    :cond_10
    if-nez p1, :cond_11

    if-lez p2, :cond_11

    .line 292
    iput-object v5, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->mIcon3:Ljava/lang/String;

    goto :goto_2

    .line 293
    :cond_11
    const/4 v7, 0x1

    if-ne p1, v7, :cond_5

    if-lez p2, :cond_5

    .line 294
    iput-object v5, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->mIcon4:Ljava/lang/String;

    goto :goto_2

    .line 298
    .end local v0           #afterInfor:J
    .end local v2           #beforInfor:J
    .end local v4           #color:I
    .end local v6           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_12
    const v7, 0x10802c0

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2
.end method

.method private process()V
    .locals 3

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->processed:Z

    if-eqz v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 131
    :cond_0
    const-string v0, "CallLogSearchSupport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPhotoUri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->mPhotoUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->mPhotoUri:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->mPhotoUri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->icon1:Ljava/lang/String;

    .line 140
    :goto_1
    iget v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->type:I

    packed-switch v0, :pswitch_data_0

    .line 164
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->processed:Z

    goto :goto_0

    .line 134
    :cond_1
    iget v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->mCallsRawContactsId:I

    if-nez v0, :cond_2

    .line 135
    const v0, 0x10802c0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->icon1:Ljava/lang/String;

    goto :goto_1

    .line 137
    :cond_2
    iget v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->slotId:I

    iget v1, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->isSdnContact:I

    invoke-direct {p0, v0, v1}, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->getIcon(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->icon1:Ljava/lang/String;

    goto :goto_1

    .line 143
    :pswitch_0
    iget v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->isVTCall:I

    if-gtz v0, :cond_3

    .line 144
    const v0, 0x7f02000e

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->icon2:Ljava/lang/String;

    goto :goto_2

    .line 146
    :cond_3
    const v0, 0x7f020011

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->icon2:Ljava/lang/String;

    goto :goto_2

    .line 150
    :pswitch_1
    iget v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->isVTCall:I

    if-gtz v0, :cond_4

    .line 151
    const v0, 0x7f020010

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->icon2:Ljava/lang/String;

    goto :goto_2

    .line 153
    :cond_4
    const v0, 0x7f020013

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->icon2:Ljava/lang/String;

    goto :goto_2

    .line 157
    :pswitch_2
    iget v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->isVTCall:I

    if-gtz v0, :cond_5

    .line 158
    const v0, 0x7f02000f

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->icon2:Ljava/lang/String;

    goto :goto_2

    .line 160
    :cond_5
    const v0, 0x7f020012

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->icon2:Ljava/lang/String;

    goto :goto_2

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public asList([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .parameter "projection"

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->process()V

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    if-nez p1, :cond_1

    .line 188
    iget-wide v2, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->callsId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v2, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->text1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v2, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->text2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v2, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->icon1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v2, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->icon2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    iget-wide v2, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->callsId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    iget-wide v2, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->callsId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_0
    return-object v1

    .line 196
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 197
    aget-object v2, p1, v0

    invoke-direct {p0, v1, v2}, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->addColumnValue(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSortKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->sortKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->process()V

    .line 175
    iget-wide v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->date:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->sortKey:Ljava/lang/String;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogSearchSupport$SearchSuggestion;->sortKey:Ljava/lang/String;

    return-object v0
.end method
