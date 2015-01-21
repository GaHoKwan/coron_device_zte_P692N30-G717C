.class public Leu/chainfire/supersu/Logs;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/supersu/Logs$Log;,
        Leu/chainfire/supersu/Logs$LogArrayAdapter;
    }
.end annotation


# static fields
.field public static 鷭:Leu/chainfire/supersu/Logs;


# instance fields
.field public 櫯:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Leu/chainfire/supersu/Logs$Log;>;"
        }
    .end annotation
.end field


# direct methods
.method static <clinit>()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    sput-object v0, Leu/chainfire/supersu/Logs;->鷭:Leu/chainfire/supersu/Logs;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/Logs;->櫯:Ljava/util/ArrayList;

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Leu/chainfire/supersu/Logs;->鷭(Landroid/content/Context;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/Logs;->櫯:Ljava/util/ArrayList;

    .line 87
    invoke-direct {p0, p1, p2}, Leu/chainfire/supersu/Logs;->鷭(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public static 鷭(Landroid/support/v4/app/FragmentActivity;Ljava/util/ArrayList;)Leu/chainfire/supersu/Logs$LogArrayAdapter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/app/Activity;Ljava/util/List<Leu/chainfire/supersu/Logs$Log;>;)Landroid/widget/ListAdapter;"
        }
    .end annotation

    .line 0
    new-instance v0, Leu/chainfire/supersu/Logs$LogArrayAdapter;

    move-object v1, p0

    move-object v3, p1

    invoke-static {p0}, Leu/chainfire/supersu/Logs;->鷭(Landroid/support/v4/app/FragmentActivity;)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Leu/chainfire/supersu/Logs$LogArrayAdapter;-><init>(Landroid/support/v4/app/FragmentActivity;ILjava/util/ArrayList;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static 鷭(Landroid/support/v4/app/FragmentActivity;)Ljava/lang/String;
    .locals 6

    .line 0
    const-string v5, "31122359"

    .line 309
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 310
    const-string v1, "config_%s_logformat"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "default"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "31122359"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    nop

    .line 313
    :catch_0
    return-object v5
.end method

.method private 鷭(Landroid/content/Context;Ljava/lang/String;)V
    .locals 21

    .line 0
    move-object/from16 v0, p1

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 92
    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 94
    const-wide/16 v9, 0x0

    .line 96
    :try_start_0
    const-string v0, "config_%s_logage"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "default"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x18

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    move-wide v9, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    nop

    .line 99
    :catch_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    .line 103
    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 104
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 106
    new-instance v0, Ljava/io/File;

    move-object/from16 v1, p1

    invoke-static {v1}, Leu/chainfire/supersu/Constants;->ˮ͈(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v14

    .line 107
    if-eqz v14, :cond_9

    .line 108
    move-object/from16 v17, v14

    array-length v0, v14

    move/from16 v16, v0

    const/4 v15, 0x0

    goto/16 :goto_4

    :cond_0
    aget-object v14, v17, v15
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3

    .line 110
    :try_start_2
    new-instance v18, Leu/chainfire/supersu/Logs$Log;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Leu/chainfire/supersu/Logs$Log;-><init>(Leu/chainfire/supersu/Logs;)V

    .line 111
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v18

    iput-object v0, v1, Leu/chainfire/supersu/Logs$Log;->鷭:Ljava/lang/String;

    .line 112
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v18

    iput-object v0, v1, Leu/chainfire/supersu/Logs$Log;->櫯:Ljava/lang/String;

    .line 113
    move-object/from16 v0, v18

    iget-object v0, v0, Leu/chainfire/supersu/Logs$Log;->鷭:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    move-object/from16 v1, v18

    iput-object v0, v1, Leu/chainfire/supersu/Logs$Log;->Ȋ:Ljava/util/Calendar;

    .line 116
    move-object/from16 v0, v18

    iget-object v0, v0, Leu/chainfire/supersu/Logs$Log;->Ȋ:Ljava/util/Calendar;

    move-object/from16 v1, v18

    iget-object v1, v1, Leu/chainfire/supersu/Logs$Log;->鷭:Ljava/lang/String;

    const/4 v2, 0x1

    const/16 v3, 0xb

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 117
    move-object/from16 v0, v18

    iget-object v0, v0, Leu/chainfire/supersu/Logs$Log;->Ȋ:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    move-object/from16 v1, v18

    iput v0, v1, Leu/chainfire/supersu/Logs$Log;->ˮ͈:I

    .line 118
    move-object/from16 v0, v18

    iget-object v0, v0, Leu/chainfire/supersu/Logs$Log;->Ȋ:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, v18

    iput v0, v1, Leu/chainfire/supersu/Logs$Log;->ȃ:I

    .line 119
    move-object/from16 v0, v18

    iget-object v0, v0, Leu/chainfire/supersu/Logs$Log;->Ȋ:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    move-object/from16 v1, v18

    iput v0, v1, Leu/chainfire/supersu/Logs$Log;->Ą:I

    .line 120
    move-object/from16 v0, v18

    iget-object v0, v0, Leu/chainfire/supersu/Logs$Log;->Ȋ:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    move-object/from16 v1, v18

    iput v0, v1, Leu/chainfire/supersu/Logs$Log;->ą:I

    .line 121
    move-object/from16 v0, v18

    iget-object v0, v0, Leu/chainfire/supersu/Logs$Log;->Ȋ:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    move-object/from16 v1, v18

    iput v0, v1, Leu/chainfire/supersu/Logs$Log;->Ć:I

    .line 122
    move-object/from16 v0, v18

    iget-object v0, v0, Leu/chainfire/supersu/Logs$Log;->Ȋ:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    move-object/from16 v1, v18

    iput v0, v1, Leu/chainfire/supersu/Logs$Log;->ć:I

    .line 123
    move-object/from16 v0, v18

    iget-object v0, v0, Leu/chainfire/supersu/Logs$Log;->鷭:Ljava/lang/String;

    const/16 v1, 0xb

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v1, v18

    iput v0, v1, Leu/chainfire/supersu/Logs$Log;->ˮ͍:I

    .line 124
    goto/16 :goto_0

    .line 126
    :cond_1
    move-object/from16 v0, v18

    iget-object v0, v0, Leu/chainfire/supersu/Logs$Log;->鷭:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v1, v18

    iput v0, v1, Leu/chainfire/supersu/Logs$Log;->ˮ͈:I

    .line 127
    move-object/from16 v0, v18

    iget-object v0, v0, Leu/chainfire/supersu/Logs$Log;->鷭:Ljava/lang/String;

    const/4 v1, 0x4

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v1, v18

    iput v0, v1, Leu/chainfire/supersu/Logs$Log;->ȃ:I

    .line 128
    move-object/from16 v0, v18

    iget-object v0, v0, Leu/chainfire/supersu/Logs$Log;->鷭:Ljava/lang/String;

    const/4 v1, 0x6

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v1, v18

    iput v0, v1, Leu/chainfire/supersu/Logs$Log;->Ą:I

    .line 129
    move-object/from16 v0, v18

    iget-object v0, v0, Leu/chainfire/supersu/Logs$Log;->鷭:Ljava/lang/String;

    const/16 v1, 0x8

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v1, v18

    iput v0, v1, Leu/chainfire/supersu/Logs$Log;->ą:I

    .line 130
    move-object/from16 v0, v18

    iget-object v0, v0, Leu/chainfire/supersu/Logs$Log;->鷭:Ljava/lang/String;

    const/16 v1, 0xa

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v1, v18

    iput v0, v1, Leu/chainfire/supersu/Logs$Log;->Ć:I

    .line 131
    move-object/from16 v0, v18

    iget-object v0, v0, Leu/chainfire/supersu/Logs$Log;->鷭:Ljava/lang/String;

    const/16 v1, 0xc

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v1, v18

    iput v0, v1, Leu/chainfire/supersu/Logs$Log;->ć:I

    .line 132
    move-object/from16 v0, v18

    iget-object v0, v0, Leu/chainfire/supersu/Logs$Log;->鷭:Ljava/lang/String;

    const/16 v1, 0xe

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v1, v18

    iput v0, v1, Leu/chainfire/supersu/Logs$Log;->ˮ͍:I

    .line 133
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    move-object/from16 v1, v18

    iput-object v0, v1, Leu/chainfire/supersu/Logs$Log;->Ȋ:Ljava/util/Calendar;

    .line 134
    move-object/from16 v0, v18

    iget-object v0, v0, Leu/chainfire/supersu/Logs$Log;->Ȋ:Ljava/util/Calendar;

    move-object/from16 v1, v18

    iget v1, v1, Leu/chainfire/supersu/Logs$Log;->ˮ͈:I

    move-object/from16 v2, v18

    iget v2, v2, Leu/chainfire/supersu/Logs$Log;->ȃ:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v3, v18

    iget v3, v3, Leu/chainfire/supersu/Logs$Log;->Ą:I

    move-object/from16 v4, v18

    iget v4, v4, Leu/chainfire/supersu/Logs$Log;->ą:I

    move-object/from16 v5, v18

    iget v5, v5, Leu/chainfire/supersu/Logs$Log;->Ć:I

    move-object/from16 v6, v18

    iget v6, v6, Leu/chainfire/supersu/Logs$Log;->ć:I

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 136
    :goto_0
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    move-object/from16 v1, v18

    iput v0, v1, Leu/chainfire/supersu/Logs$Log;->岱:I

    .line 138
    const/16 v19, 0x1

    .line 139
    const-wide/16 v0, 0x0

    cmp-long v0, v9, v0

    if-lez v0, :cond_2

    .line 140
    move-object/from16 v0, v18

    iget-object v0, v0, Leu/chainfire/supersu/Logs$Log;->Ȋ:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long v2, v12, v9

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 141
    const/16 v19, 0x0

    .line 142
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_2
    if-eqz v19, :cond_8

    .line 147
    move-object/from16 v0, v18

    iget-object v0, v0, Leu/chainfire/supersu/Logs$Log;->鷭:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 148
    if-ltz v14, :cond_8

    .line 149
    move-object/from16 v0, v18

    iget-object v0, v0, Leu/chainfire/supersu/Logs$Log;->鷭:Ljava/lang/String;

    add-int/lit8 v1, v14, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    .line 150
    const-string v0, "."

    move-object/from16 v1, v19

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 151
    move-object/from16 v0, v19

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 152
    add-int/lit8 v0, v14, 0x1

    move-object/from16 v1, v19

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    .line 154
    const-string v0, "GRANTED"

    move-object/from16 v1, v20

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 155
    const/4 v0, 0x1

    move-object/from16 v1, v18

    iput v0, v1, Leu/chainfire/supersu/Logs$Log;->ċ:I

    .line 156
    goto :goto_1

    :cond_3
    const-string v0, "DENIED"

    move-object/from16 v1, v20

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 157
    const/4 v0, 0x0

    move-object/from16 v1, v18

    iput v0, v1, Leu/chainfire/supersu/Logs$Log;->ċ:I

    .line 159
    :cond_4
    :goto_1
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Leu/chainfire/supersu/Logs$Log;->纫:Ljava/lang/String;

    .line 161
    if-eqz p2, :cond_5

    move-object/from16 v0, v18

    iget-object v0, v0, Leu/chainfire/supersu/Logs$Log;->纫:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 162
    :cond_5
    move-object/from16 v0, v18

    iget-object v0, v0, Leu/chainfire/supersu/Logs$Log;->纫:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 163
    move-object/from16 v0, v18

    iget-object v0, v0, Leu/chainfire/supersu/Logs$Log;->纫:Ljava/lang/String;

    move-object/from16 v1, v18

    iput-object v0, v1, Leu/chainfire/supersu/Logs$Log;->䒧:Ljava/lang/String;

    .line 164
    move-object/from16 v0, v18

    iget-object v0, v0, Leu/chainfire/supersu/Logs$Log;->䒧:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object/from16 v1, v18

    iput-object v0, v1, Leu/chainfire/supersu/Logs$Log;->纫:Ljava/lang/String;

    .line 165
    goto :goto_2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3

    .line 167
    :cond_6
    :try_start_3
    move-object/from16 v0, v18

    iget-object v0, v0, Leu/chainfire/supersu/Logs$Log;->纫:Ljava/lang/String;

    invoke-static {v8, v0}, Leu/chainfire/supersu/Settings;->鷭(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_7

    .line 169
    move-object/from16 v0, v18

    iget-object v0, v0, Leu/chainfire/supersu/Logs$Log;->纫:Ljava/lang/String;

    move-object/from16 v1, v18

    iput-object v0, v1, Leu/chainfire/supersu/Logs$Log;->䒧:Ljava/lang/String;

    .line 170
    move-object/from16 v0, v18

    iget-object v0, v0, Leu/chainfire/supersu/Logs$Log;->纫:Ljava/lang/String;

    invoke-static {v8, v0}, Leu/chainfire/supersu/Settings;->櫯(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v18

    iput-object v0, v1, Leu/chainfire/supersu/Logs$Log;->纫:Ljava/lang/String;

    .line 172
    move-object/from16 v0, v18

    iget-object v0, v0, Leu/chainfire/supersu/Logs$Log;->䒧:Ljava/lang/String;

    move-object/from16 v1, v18

    iget-object v1, v1, Leu/chainfire/supersu/Logs$Log;->纫:Ljava/lang/String;

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3

    .line 174
    :try_start_4
    nop

    .line 178
    :catch_1
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Leu/chainfire/supersu/Logs;->櫯:Ljava/util/ArrayList;

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3

    .line 182
    :try_start_5
    goto :goto_3

    .line 183
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 108
    :cond_8
    :goto_3
    add-int/lit8 v15, v15, 0x1

    :goto_4
    move/from16 v0, v16

    if-lt v15, v0, :cond_0

    .line 188
    :cond_9
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 189
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 190
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    goto :goto_5

    :cond_a
    move-object/from16 v0, v16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v15, v0

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rm \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    :goto_5
    move-object/from16 v0, v16

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    .line 193
    invoke-static {v14}, Leu/chainfire/supersu/SuperUser;->櫯(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 196
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Leu/chainfire/supersu/Logs;->櫯:Ljava/util/ArrayList;

    new-instance v1, Leu/chainfire/supersu/Logs$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Leu/chainfire/supersu/Logs$1;-><init>(Leu/chainfire/supersu/Logs;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_3

    .line 217
    return-void

    .line 220
    :catch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Leu/chainfire/supersu/Logs;->櫯:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 221
    const-string v0, "rm %s/*"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    move-object/from16 v2, p1

    invoke-static {v2}, Leu/chainfire/supersu/Constants;->ˮ͈(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->櫯(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 223
    return-void
.end method
