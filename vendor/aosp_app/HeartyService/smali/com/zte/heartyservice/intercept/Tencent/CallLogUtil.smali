.class public abstract Lcom/zte/heartyservice/intercept/Tencent/CallLogUtil;
.super Ljava/lang/Object;
.source "CallLogUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateContentValues(Lcom/zte/heartyservice/intercept/Tencent/CallLogx;IZ)Landroid/content/ContentValues;
    .locals 4
    .parameter "callLog"
    .parameter "privateFlag"
    .parameter "issys"

    .prologue
    .line 126
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 127
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v1, "number"

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->phonenum:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string v1, "date"

    iget-wide v2, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->date:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 129
    const-string v1, "duration"

    iget-wide v2, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->duration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 130
    const-string v1, "type"

    iget v2, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    const-string v1, "name"

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v1, "numbertype"

    iget v2, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->numbertype:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    const-string v1, "numberlabel"

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->numberlabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget-object v1, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->COLUMN_SUBSCRIPTION:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 136
    sget-object v1, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->COLUMN_SUBSCRIPTION:Ljava/lang/String;

    iget v2, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->subscription:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 139
    :cond_0
    if-nez p2, :cond_1

    .line 140
    const-string v1, "tagnew"

    iget v2, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->tagnew:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 141
    const-string v1, "privateflag"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 142
    const-string v1, "read_extend"

    iget v2, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->read_extend:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    :goto_0
    return-object v0

    .line 144
    :cond_1
    const-string v1, "new"

    iget v2, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->tagnew:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public static generateContentValuesForSystem(Lcom/zte/heartyservice/intercept/Tencent/CallLogx;IZ)Landroid/content/ContentValues;
    .locals 4
    .parameter "callLog"
    .parameter "privateFlag"
    .parameter "issys"

    .prologue
    .line 152
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 153
    .local v0, contentValues:Landroid/content/ContentValues;
    const-string v1, "number"

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->phonenum:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v1, "date"

    iget-wide v2, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->date:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 155
    const-string v1, "duration"

    iget-wide v2, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->duration:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 156
    const-string v1, "type"

    iget v2, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    const-string v1, "name"

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v1, "numbertype"

    iget v2, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->numbertype:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    const-string v1, "numberlabel"

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->numberlabel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    sget-object v1, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->COLUMN_SUBSCRIPTION:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 162
    sget-object v1, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->COLUMN_SUBSCRIPTION:Ljava/lang/String;

    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v2

    iget v3, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->subscription:I

    invoke-virtual {v2, v3}, Lcom/zte/heartyservice/msim/SimManager;->getCallSysId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 165
    :cond_0
    if-nez p2, :cond_1

    .line 166
    const-string v1, "tagnew"

    iget v2, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->tagnew:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    const-string v1, "privateflag"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    const-string v1, "read_extend"

    iget v2, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->read_extend:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    :goto_0
    return-object v0

    .line 170
    :cond_1
    const-string v1, "new"

    iget v2, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->tagnew:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public static getLogFromCursor(Landroid/database/Cursor;Z)Lcom/zte/heartyservice/intercept/Tencent/CallLogx;
    .locals 13
    .parameter "cursor"
    .parameter "issys"

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, callLog:Lcom/zte/heartyservice/intercept/Tencent/CallLogx;
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 80
    if-eqz p1, :cond_2

    const-string v11, "_id"

    :goto_0
    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 82
    .local v3, idIndex:I
    const-string v11, "number"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 83
    .local v6, numberIndex:I
    const-string v11, "date"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 84
    .local v1, dateIndex:I
    const-string v11, "duration"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 85
    .local v2, durationIndex:I
    const-string v11, "type"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 86
    .local v10, typeIndex:I
    const-string v11, "numbertype"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 87
    .local v8, numberTypeIndex:I
    if-eqz p1, :cond_3

    const-string v11, "new"

    :goto_1
    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 88
    .local v5, newIndex:I
    const-string v11, "name"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 89
    .local v4, nameIndex:I
    const-string v11, "numberlabel"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 91
    .local v7, numberLabelIndex:I
    const/4 v9, -0x1

    .line 92
    .local v9, subscriptionIndex:I
    sget-object v11, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->COLUMN_SUBSCRIPTION:Ljava/lang/String;

    if-eqz v11, :cond_0

    .line 93
    sget-object v11, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->COLUMN_SUBSCRIPTION:Ljava/lang/String;

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 97
    :cond_0
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;

    .end local v0           #callLog:Lcom/zte/heartyservice/intercept/Tencent/CallLogx;
    invoke-direct {v0}, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;-><init>()V

    .line 98
    .restart local v0       #callLog:Lcom/zte/heartyservice/intercept/Tencent/CallLogx;
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->id:I

    .line 99
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->phonenum:Ljava/lang/String;

    .line 100
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    iput-wide v11, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->date:J

    .line 101
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    int-to-long v11, v11

    iput-wide v11, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->duration:J

    .line 102
    invoke-interface {p0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->type:I

    .line 103
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->numbertype:I

    .line 104
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->tagnew:I

    .line 105
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->numberlabel:Ljava/lang/String;

    .line 106
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->name:Ljava/lang/String;

    .line 108
    const/4 v11, -0x1

    if-eq v9, v11, :cond_1

    .line 109
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    iput v11, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->subscription:I

    .line 116
    .end local v1           #dateIndex:I
    .end local v2           #durationIndex:I
    .end local v3           #idIndex:I
    .end local v4           #nameIndex:I
    .end local v5           #newIndex:I
    .end local v6           #numberIndex:I
    .end local v7           #numberLabelIndex:I
    .end local v8           #numberTypeIndex:I
    .end local v9           #subscriptionIndex:I
    .end local v10           #typeIndex:I
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 117
    return-object v0

    .line 80
    :cond_2
    const-string v11, "id"

    goto/16 :goto_0

    .line 87
    .restart local v1       #dateIndex:I
    .restart local v2       #durationIndex:I
    .restart local v3       #idIndex:I
    .restart local v6       #numberIndex:I
    .restart local v8       #numberTypeIndex:I
    .restart local v10       #typeIndex:I
    :cond_3
    const-string v11, "tagnew"

    goto :goto_1
.end method

.method public static getLogsFromCursor(Landroid/database/Cursor;Z)Ljava/util/List;
    .locals 14
    .parameter "cursor"
    .parameter "issys"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/CallLogx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v4, logs:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/CallLogx;>;"
    const-string v12, "id"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 30
    .local v3, idIndex:I
    const-string v12, "number"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 31
    .local v7, numberIndex:I
    const-string v12, "date"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 32
    .local v1, dateIndex:I
    const-string v12, "duration"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 33
    .local v2, durationIndex:I
    const-string v12, "type"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 34
    .local v11, typeIndex:I
    const-string v12, "numbertype"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 35
    .local v9, numberTypeIndex:I
    const-string v12, "tagnew"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 36
    .local v6, newIndex:I
    const-string v12, "name"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 37
    .local v5, nameIndex:I
    const-string v12, "numberlabel"

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 39
    .local v8, numberLabelIndex:I
    const/4 v10, -0x1

    .line 40
    .local v10, subscriptionIndex:I
    sget-object v12, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->COLUMN_SUBSCRIPTION:Ljava/lang/String;

    if-eqz v12, :cond_0

    .line 41
    sget-object v12, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->COLUMN_SUBSCRIPTION:Ljava/lang/String;

    invoke-interface {p0, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 44
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 45
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v12

    if-nez v12, :cond_2

    .line 46
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;

    invoke-direct {v0}, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;-><init>()V

    .line 47
    .local v0, callLog:Lcom/zte/heartyservice/intercept/Tencent/CallLogx;
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->id:I

    .line 48
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->phonenum:Ljava/lang/String;

    .line 49
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    iput-wide v12, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->date:J

    .line 50
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    int-to-long v12, v12

    iput-wide v12, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->duration:J

    .line 51
    invoke-interface {p0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->type:I

    .line 52
    invoke-interface {p0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->numbertype:I

    .line 53
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->tagnew:I

    .line 54
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->numberlabel:Ljava/lang/String;

    .line 55
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->name:Ljava/lang/String;

    .line 57
    const/4 v12, -0x1

    if-eq v10, v12, :cond_1

    .line 58
    invoke-interface {p0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    iput v12, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->subscription:I

    .line 64
    :cond_1
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 67
    .end local v0           #callLog:Lcom/zte/heartyservice/intercept/Tencent/CallLogx;
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 68
    return-object v4
.end method

.method public static toCallLogx(Ltmsdk/common/module/aresengine/CallLogEntity;)Lcom/zte/heartyservice/intercept/Tencent/CallLogx;
    .locals 3
    .parameter "entity"

    .prologue
    .line 197
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;

    invoke-direct {v0}, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;-><init>()V

    .line 198
    .local v0, callLog:Lcom/zte/heartyservice/intercept/Tencent/CallLogx;
    iget v1, p0, Ltmsdk/common/module/aresengine/CallLogEntity;->id:I

    iput v1, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->id:I

    .line 199
    iget-object v1, p0, Ltmsdk/common/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    iput-object v1, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->phonenum:Ljava/lang/String;

    .line 200
    iget-wide v1, p0, Ltmsdk/common/module/aresengine/CallLogEntity;->date:J

    iput-wide v1, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->date:J

    .line 201
    iget v1, p0, Ltmsdk/common/module/aresengine/CallLogEntity;->type:I

    iput v1, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->type:I

    .line 202
    iget-wide v1, p0, Ltmsdk/common/module/aresengine/CallLogEntity;->duration:J

    iput-wide v1, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->duration:J

    .line 204
    iget-object v1, p0, Ltmsdk/common/module/aresengine/CallLogEntity;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->name:Ljava/lang/String;

    .line 205
    return-object v0
.end method

.method public static toCallLogxList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/aresengine/CallLogEntity;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/CallLogx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, entityList:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/aresengine/CallLogEntity;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v1, callLogList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/CallLogx;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltmsdk/common/module/aresengine/CallLogEntity;

    .line 185
    .local v2, entity:Ltmsdk/common/module/aresengine/CallLogEntity;
    invoke-static {v2}, Lcom/zte/heartyservice/intercept/Tencent/CallLogUtil;->toCallLogx(Ltmsdk/common/module/aresengine/CallLogEntity;)Lcom/zte/heartyservice/intercept/Tencent/CallLogx;

    move-result-object v0

    .line 186
    .local v0, callLog:Lcom/zte/heartyservice/intercept/Tencent/CallLogx;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 188
    .end local v0           #callLog:Lcom/zte/heartyservice/intercept/Tencent/CallLogx;
    .end local v2           #entity:Ltmsdk/common/module/aresengine/CallLogEntity;
    :cond_0
    return-object v1
.end method
