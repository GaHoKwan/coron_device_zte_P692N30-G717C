.class public Lauu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I

.field private static a:Ljava/io/FileOutputStream;

.field private static a:Z

.field private static b:I

.field private static b:Ljava/io/FileOutputStream;

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    sput-boolean v0, Lauu;->a:Z

    .line 17
    sput v0, Lauu;->a:I

    .line 19
    sput v0, Lauu;->b:I

    .line 21
    sput v0, Lauu;->c:I

    .line 23
    sput v0, Lauu;->d:I

    .line 25
    sput v0, Lauu;->e:I

    .line 27
    sput v0, Lauu;->f:I

    .line 56
    sput v0, Lauu;->i:I

    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 196
    sget v0, Lauu;->i:I

    return v0
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 83
    sget-object v0, Lauu;->a:Ljava/io/FileOutputStream;

    if-nez v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 87
    :cond_0
    :try_start_0
    sget-object v0, Lauu;->a:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MM:dd hh:mm:ss"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " BS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lauu;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " auto: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lauu;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " manual: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lauu;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " typed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lauu;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " undone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lauu;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " saved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lauu;->h:I

    sget v2, Lauu;->g:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lauu;->h:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    sget-object v1, Lauu;->b:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 100
    sget-object v0, Lauu;->b:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 101
    const/4 v0, 0x0

    sput-object v0, Lauu;->a:Ljava/io/FileOutputStream;

    .line 102
    const/4 v0, 0x0

    sput-object v0, Lauu;->b:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 103
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public static a(CZ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x6

    const/4 v1, 0x1

    const/4 v3, 0x2

    .line 131
    const/16 v0, 0x20

    if-ne p0, v0, :cond_1

    move v0, v1

    .line 132
    :goto_0
    sget v2, Lauu;->i:I

    packed-switch v2, :pswitch_data_0

    .line 179
    :cond_0
    :goto_1
    return-void

    .line 131
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 134
    :pswitch_0
    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    .line 135
    :cond_2
    sput v1, Lauu;->i:I

    goto :goto_1

    .line 142
    :pswitch_1
    if-eqz v0, :cond_3

    .line 144
    const/4 v0, 0x7

    sput v0, Lauu;->i:I

    goto :goto_1

    .line 145
    :cond_3
    if-eqz p1, :cond_4

    .line 146
    sput v4, Lauu;->i:I

    goto :goto_1

    .line 148
    :cond_4
    sput v3, Lauu;->i:I

    goto :goto_1

    .line 152
    :pswitch_2
    if-eqz v0, :cond_5

    .line 153
    const/16 v0, 0x8

    sput v0, Lauu;->i:I

    goto :goto_1

    .line 154
    :cond_5
    if-eqz p1, :cond_6

    .line 156
    sput v4, Lauu;->i:I

    goto :goto_1

    .line 158
    :cond_6
    sput v3, Lauu;->i:I

    goto :goto_1

    .line 166
    :pswitch_3
    if-nez v0, :cond_7

    if-nez p1, :cond_7

    .line 167
    sput v3, Lauu;->i:I

    goto :goto_1

    .line 169
    :cond_7
    sput v1, Lauu;->i:I

    goto :goto_1

    .line 173
    :pswitch_4
    if-nez v0, :cond_8

    if-eqz p1, :cond_9

    .line 174
    :cond_8
    const/4 v0, 0x3

    sput v0, Lauu;->i:I

    goto :goto_1

    .line 176
    :cond_9
    sput v3, Lauu;->i:I

    goto :goto_1

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 62
    sget v0, Lauu;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lauu;->f:I

    .line 63
    sput v1, Lauu;->b:I

    .line 64
    sput v1, Lauu;->a:I

    .line 65
    sput v1, Lauu;->c:I

    .line 66
    sput v1, Lauu;->d:I

    .line 67
    sput v1, Lauu;->e:I

    .line 68
    sput v1, Lauu;->g:I

    .line 69
    sput v1, Lauu;->h:I

    .line 70
    const/4 v0, 0x1

    sput v0, Lauu;->i:I

    .line 72
    sget-boolean v0, Lauu;->a:Z

    if-eqz v0, :cond_0

    .line 74
    :try_start_0
    const-string v0, "key.txt"

    const v1, 0x8000

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    sput-object v0, Lauu;->a:Ljava/io/FileOutputStream;

    .line 75
    const-string v0, "action.txt"

    const v1, 0x8000

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    sput-object v0, Lauu;->b:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    const-string v1, "TextEntryState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t open file for output: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter

    .prologue
    .line 118
    sget v0, Lauu;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lauu;->e:I

    .line 119
    const/4 v0, 0x4

    sput v0, Lauu;->i:I

    .line 120
    return-void
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 123
    sget v0, Lauu;->d:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lauu;->d:I

    .line 124
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {p0}, Lauu;->a(Ljava/lang/CharSequence;)V

    .line 127
    :cond_0
    const/4 v0, 0x4

    sput v0, Lauu;->i:I

    .line 128
    return-void
.end method

.method public static b()V
    .locals 3

    .prologue
    const/16 v2, 0x9

    .line 182
    sget v0, Lauu;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 183
    sput v2, Lauu;->i:I

    .line 184
    sget v0, Lauu;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lauu;->c:I

    .line 188
    :cond_0
    :goto_0
    sget v0, Lauu;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lauu;->a:I

    .line 189
    return-void

    .line 185
    :cond_1
    sget v0, Lauu;->i:I

    if-ne v0, v2, :cond_0

    .line 186
    const/4 v0, 0x2

    sput v0, Lauu;->i:I

    goto :goto_0
.end method
