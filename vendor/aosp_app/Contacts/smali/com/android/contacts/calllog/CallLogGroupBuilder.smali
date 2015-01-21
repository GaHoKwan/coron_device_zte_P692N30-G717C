.class public Lcom/android/contacts/calllog/CallLogGroupBuilder;
.super Ljava/lang/Object;
.source "CallLogGroupBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/calllog/CallLogGroupBuilder$GroupCreator;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CallLogGroupBuilder"


# instance fields
.field private final mGroupCreator:Lcom/android/contacts/calllog/CallLogGroupBuilder$GroupCreator;


# direct methods
.method public constructor <init>(Lcom/android/contacts/calllog/CallLogGroupBuilder$GroupCreator;)V
    .locals 0
    .parameter "groupCreator"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/android/contacts/calllog/CallLogGroupBuilder$GroupCreator;

    .line 44
    return-void
.end method

.method private addGroup(II)V
    .locals 2
    .parameter "cursorPosition"
    .parameter "size"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/android/contacts/calllog/CallLogGroupBuilder$GroupCreator;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/android/contacts/calllog/CallLogGroupBuilder$GroupCreator;->addGroup(IIZ)V

    .line 190
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 237
    const-string v0, "CallLogGroupBuilder"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void
.end method


# virtual methods
.method public addGroups(Landroid/database/Cursor;)V
    .locals 21
    .parameter "cursor"

    .prologue
    .line 58
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 60
    .local v3, count:I
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "addGroups(), cursor count = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/contacts/calllog/CallLogGroupBuilder;->log(Ljava/lang/String;)V

    .line 61
    if-nez v3, :cond_0

    .line 179
    :goto_0
    return-void

    .line 65
    :cond_0
    const/4 v4, 0x1

    .line 66
    .local v4, currentGroupSize:I
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 74
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 76
    .local v11, firstNumber:Ljava/lang/String;
    const/16 v19, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 79
    .local v8, firstCallType:I
    const/16 v19, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 80
    .local v12, firstSimId:I
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 81
    .local v13, firstVtCall:I
    const/16 v19, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 82
    .local v9, firstDate:J
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v19

    if-eqz v19, :cond_1

    .line 83
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/contacts/calllog/CallLogGroupBuilder;->setGroupHeaderPosition(I)V

    .line 86
    :cond_1
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 91
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, currentNumber:Ljava/lang/String;
    const/16 v19, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 94
    .local v2, callType:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v5}, Lcom/android/contacts/calllog/CallLogGroupBuilder;->equalNumbers(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    .line 97
    .local v15, sameNumber:Z
    const/16 v19, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 98
    .local v17, simId:I
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 99
    .local v18, vtCall:I
    const/16 v19, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 100
    .local v6, date:J
    invoke-static {v9, v10, v6, v7}, Lcom/mediatek/contacts/calllog/CallLogDateFormatHelper;->isSameDay(JJ)Z

    move-result v14

    .line 124
    .local v14, isSameDay:Z
    const/16 v19, 0x4

    move/from16 v0, v19

    if-eq v8, v0, :cond_2

    if-eqz v15, :cond_2

    move/from16 v0, v18

    if-eq v13, v0, :cond_3

    .line 129
    :cond_2
    const/16 v16, 0x0

    .line 136
    .local v16, shouldGroup:Z
    :goto_2
    if-eqz v16, :cond_4

    .line 139
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 132
    .end local v16           #shouldGroup:Z
    :cond_3
    const/16 v16, 0x1

    .restart local v16       #shouldGroup:Z
    goto :goto_2

    .line 150
    :cond_4
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v19

    sub-int v19, v19, v4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/calllog/CallLogGroupBuilder;->addGroup(II)V

    .line 151
    if-nez v14, :cond_5

    .line 152
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/contacts/calllog/CallLogGroupBuilder;->setGroupHeaderPosition(I)V

    .line 156
    :cond_5
    const/4 v4, 0x1

    .line 158
    move-object v11, v5

    .line 159
    move v8, v2

    .line 161
    move v8, v2

    .line 162
    move/from16 v12, v17

    .line 163
    move/from16 v13, v18

    .line 164
    move-wide v9, v6

    goto :goto_1

    .line 177
    .end local v2           #callType:I
    .end local v5           #currentNumber:Ljava/lang/String;
    .end local v6           #date:J
    .end local v14           #isSameDay:Z
    .end local v15           #sameNumber:Z
    .end local v16           #shouldGroup:Z
    .end local v17           #simId:I
    .end local v18           #vtCall:I
    :cond_6
    sub-int v19, v3, v4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/calllog/CallLogGroupBuilder;->addGroup(II)V

    goto/16 :goto_0
.end method

.method public compareSipAddresses(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "number1"
    .parameter "number2"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/16 v9, 0x40

    const/4 v6, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 203
    if-eqz p1, :cond_0

    if-nez p2, :cond_3

    :cond_0
    if-ne p1, p2, :cond_2

    .line 227
    :cond_1
    :goto_0
    return v6

    :cond_2
    move v6, v7

    .line 203
    goto :goto_0

    .line 205
    :cond_3
    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 208
    .local v0, index1:I
    if-eq v0, v8, :cond_5

    .line 209
    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 210
    .local v4, userinfo1:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, rest1:Ljava/lang/String;
    :goto_1
    invoke-virtual {p2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 219
    .local v1, index2:I
    if-eq v1, v8, :cond_6

    .line 220
    invoke-virtual {p2, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 221
    .local v5, userinfo2:Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, rest2:Ljava/lang/String;
    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_4
    move v6, v7

    goto :goto_0

    .line 212
    .end local v1           #index2:I
    .end local v2           #rest1:Ljava/lang/String;
    .end local v3           #rest2:Ljava/lang/String;
    .end local v4           #userinfo1:Ljava/lang/String;
    .end local v5           #userinfo2:Ljava/lang/String;
    :cond_5
    move-object v4, p1

    .line 213
    .restart local v4       #userinfo1:Ljava/lang/String;
    const-string v2, ""

    .restart local v2       #rest1:Ljava/lang/String;
    goto :goto_1

    .line 223
    .restart local v1       #index2:I
    :cond_6
    move-object v5, p2

    .line 224
    .restart local v5       #userinfo2:Ljava/lang/String;
    const-string v3, ""

    .restart local v3       #rest2:Ljava/lang/String;
    goto :goto_2
.end method

.method public equalNumbers(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "number1"
    .parameter "number2"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 194
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/calllog/CallLogGroupBuilder;->compareSipAddresses(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 197
    :goto_0
    return v0

    :cond_1
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setGroupHeaderPosition(I)V
    .locals 1
    .parameter "cursorPosition"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/android/contacts/calllog/CallLogGroupBuilder$GroupCreator;

    invoke-interface {v0, p1}, Lcom/android/contacts/calllog/CallLogGroupBuilder$GroupCreator;->setGroupHeaderPosition(I)V

    .line 234
    return-void
.end method
