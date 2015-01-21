.class Lcom/zte/heartyservice/intercept/Tencent/ZTEAresEngineFactor$CustomPhoneDeviceController;
.super Ltmsdk/bg/module/aresengine/PhoneDeviceController;
.source "ZTEAresEngineFactor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/intercept/Tencent/ZTEAresEngineFactor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomPhoneDeviceController"
.end annotation


# instance fields
.field mController:Ltmsdk/bg/module/aresengine/PhoneDeviceController;

.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEAresEngineFactor;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/ZTEAresEngineFactor;Ltmsdk/bg/module/aresengine/PhoneDeviceController;)V
    .locals 0
    .parameter
    .parameter "controller"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEAresEngineFactor$CustomPhoneDeviceController;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEAresEngineFactor;

    invoke-direct {p0}, Ltmsdk/bg/module/aresengine/PhoneDeviceController;-><init>()V

    .line 98
    iput-object p2, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEAresEngineFactor$CustomPhoneDeviceController;->mController:Ltmsdk/bg/module/aresengine/PhoneDeviceController;

    .line 99
    return-void
.end method


# virtual methods
.method public varargs blockSms([Ljava/lang/Object;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEAresEngineFactor$CustomPhoneDeviceController;->mController:Ltmsdk/bg/module/aresengine/PhoneDeviceController;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEAresEngineFactor$CustomPhoneDeviceController;->mController:Ltmsdk/bg/module/aresengine/PhoneDeviceController;

    invoke-virtual {v0, p1}, Ltmsdk/bg/module/aresengine/PhoneDeviceController;->blockSms([Ljava/lang/Object;)V

    .line 201
    :cond_0
    return-void
.end method

.method public cancelMissCall()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEAresEngineFactor$CustomPhoneDeviceController;->mController:Ltmsdk/bg/module/aresengine/PhoneDeviceController;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEAresEngineFactor$CustomPhoneDeviceController;->mController:Ltmsdk/bg/module/aresengine/PhoneDeviceController;

    invoke-virtual {v0}, Ltmsdk/bg/module/aresengine/PhoneDeviceController;->cancelMissCall()V

    .line 106
    :cond_0
    return-void
.end method

.method public disableRingVibration(I)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEAresEngineFactor$CustomPhoneDeviceController;->mController:Ltmsdk/bg/module/aresengine/PhoneDeviceController;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEAresEngineFactor$CustomPhoneDeviceController;->mController:Ltmsdk/bg/module/aresengine/PhoneDeviceController;

    invoke-virtual {v0, p1}, Ltmsdk/bg/module/aresengine/PhoneDeviceController;->disableRingVibration(I)V

    .line 113
    :cond_0
    return-void
.end method

.method public hangup()V
    .locals 25

    .prologue
    .line 129
    new-instance v15, Landroid/content/Intent;

    const-string v20, "com.zte.heartyservice.END_CALL"

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v15, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/zte/heartyservice/main/HeartyServiceApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 133
    :try_start_0
    const-string v20, "android.os.ServiceManager"

    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v18

    .line 134
    .local v18, serviceManagerClass:Ljava/lang/Class;
    const-string v20, "getService"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-class v23, Ljava/lang/String;

    aput-object v23, v21, v22

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 135
    .local v12, getServiceMethod:Ljava/lang/reflect/Method;
    const/16 v20, 0x0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const-string v23, "phone_msim"

    aput-object v23, v21, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v17

    .line 136
    .local v17, phoneService:Ljava/lang/Object;
    const/4 v4, 0x0

    .line 137
    .local v4, ITelephonyClass:Ljava/lang/Class;
    const/4 v5, 0x0

    .line 139
    .local v5, ITelephonyStubClass:Ljava/lang/Class;
    :try_start_1
    const-string v20, "com.android.internal.telephony.ITelephonyMSim"

    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 140
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v6

    .local v6, arr$:[Ljava/lang/Class;
    array-length v0, v6

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_0
    move/from16 v0, v16

    if-ge v13, v0, :cond_0

    aget-object v8, v6, v13

    .line 141
    .local v8, clazz:Ljava/lang/Class;
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "Stub"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_6

    move-result v20

    if-eqz v20, :cond_3

    .line 142
    move-object v5, v8

    .line 150
    .end local v6           #arr$:[Ljava/lang/Class;
    .end local v8           #clazz:Ljava/lang/Class;
    .end local v13           #i$:I
    .end local v16           #len$:I
    :cond_0
    :goto_1
    if-nez v5, :cond_1

    .line 151
    :try_start_2
    const-string v20, "com.android.internal.telephony.msim.ITelephonyMSim"

    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 152
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v6

    .restart local v6       #arr$:[Ljava/lang/Class;
    array-length v0, v6

    move/from16 v16, v0

    .restart local v16       #len$:I
    const/4 v13, 0x0

    .restart local v13       #i$:I
    :goto_2
    move/from16 v0, v16

    if-ge v13, v0, :cond_1

    aget-object v8, v6, v13

    .line 153
    .restart local v8       #clazz:Ljava/lang/Class;
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "Stub"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 154
    move-object v5, v8

    .line 160
    .end local v6           #arr$:[Ljava/lang/Class;
    .end local v8           #clazz:Ljava/lang/Class;
    .end local v13           #i$:I
    .end local v16           #len$:I
    :cond_1
    if-eqz v5, :cond_2

    .line 161
    const-string v20, "android.os.IBinder"

    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 162
    .local v3, IBinderClass:Ljava/lang/Class;
    const-string v20, "asInterface"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v3, v21, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 164
    .local v7, asInterfaceMethod:Ljava/lang/reflect/Method;
    const/16 v20, 0x0

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v17, v21, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v7, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 166
    .local v14, iTelephony:Ljava/lang/Object;
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    const-string v21, "getCallState"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    sget-object v24, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 167
    .local v11, getCallStateMethod:Ljava/lang/reflect/Method;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v11, v14, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 168
    .local v19, state:Ljava/lang/Object;
    const-string v20, "AresEngineFactor"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "liuji test getCallStateMethod state:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    check-cast v19, Ljava/lang/Integer;

    .end local v19           #state:Ljava/lang/Object;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 170
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    const-string v21, "endCall"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    sget-object v24, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v24, v22, v23

    invoke-virtual/range {v20 .. v22}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 171
    .local v10, endCallMethod:Ljava/lang/reflect/Method;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v10, v14, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_6

    .line 188
    .end local v3           #IBinderClass:Ljava/lang/Class;
    .end local v4           #ITelephonyClass:Ljava/lang/Class;
    .end local v5           #ITelephonyStubClass:Ljava/lang/Class;
    .end local v7           #asInterfaceMethod:Ljava/lang/reflect/Method;
    .end local v10           #endCallMethod:Ljava/lang/reflect/Method;
    .end local v11           #getCallStateMethod:Ljava/lang/reflect/Method;
    .end local v12           #getServiceMethod:Ljava/lang/reflect/Method;
    .end local v14           #iTelephony:Ljava/lang/Object;
    .end local v17           #phoneService:Ljava/lang/Object;
    .end local v18           #serviceManagerClass:Ljava/lang/Class;
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEAresEngineFactor$CustomPhoneDeviceController;->mController:Ltmsdk/bg/module/aresengine/PhoneDeviceController;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 189
    const-string v20, "AresEngineFactor"

    const-string v21, "liuji debug mController.hangup"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEAresEngineFactor$CustomPhoneDeviceController;->mController:Ltmsdk/bg/module/aresengine/PhoneDeviceController;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ltmsdk/bg/module/aresengine/PhoneDeviceController;->hangup()V

    .line 194
    :goto_4
    return-void

    .line 140
    .restart local v4       #ITelephonyClass:Ljava/lang/Class;
    .restart local v5       #ITelephonyStubClass:Ljava/lang/Class;
    .restart local v6       #arr$:[Ljava/lang/Class;
    .restart local v8       #clazz:Ljava/lang/Class;
    .restart local v12       #getServiceMethod:Ljava/lang/reflect/Method;
    .restart local v13       #i$:I
    .restart local v16       #len$:I
    .restart local v17       #phoneService:Ljava/lang/Object;
    .restart local v18       #serviceManagerClass:Ljava/lang/Class;
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 146
    .end local v6           #arr$:[Ljava/lang/Class;
    .end local v8           #clazz:Ljava/lang/Class;
    .end local v13           #i$:I
    .end local v16           #len$:I
    :catch_0
    move-exception v9

    .line 147
    .local v9, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_6

    goto/16 :goto_1

    .line 174
    .end local v4           #ITelephonyClass:Ljava/lang/Class;
    .end local v5           #ITelephonyStubClass:Ljava/lang/Class;
    .end local v9           #e:Ljava/lang/Exception;
    .end local v12           #getServiceMethod:Ljava/lang/reflect/Method;
    .end local v17           #phoneService:Ljava/lang/Object;
    .end local v18           #serviceManagerClass:Ljava/lang/Class;
    :catch_1
    move-exception v9

    .line 175
    .local v9, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v9}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 152
    .end local v9           #e:Ljava/lang/ClassNotFoundException;
    .restart local v4       #ITelephonyClass:Ljava/lang/Class;
    .restart local v5       #ITelephonyStubClass:Ljava/lang/Class;
    .restart local v6       #arr$:[Ljava/lang/Class;
    .restart local v8       #clazz:Ljava/lang/Class;
    .restart local v12       #getServiceMethod:Ljava/lang/reflect/Method;
    .restart local v13       #i$:I
    .restart local v16       #len$:I
    .restart local v17       #phoneService:Ljava/lang/Object;
    .restart local v18       #serviceManagerClass:Ljava/lang/Class;
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 176
    .end local v4           #ITelephonyClass:Ljava/lang/Class;
    .end local v5           #ITelephonyStubClass:Ljava/lang/Class;
    .end local v6           #arr$:[Ljava/lang/Class;
    .end local v8           #clazz:Ljava/lang/Class;
    .end local v12           #getServiceMethod:Ljava/lang/reflect/Method;
    .end local v13           #i$:I
    .end local v16           #len$:I
    .end local v17           #phoneService:Ljava/lang/Object;
    .end local v18           #serviceManagerClass:Ljava/lang/Class;
    :catch_2
    move-exception v9

    .line 177
    .local v9, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v9}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_3

    .line 178
    .end local v9           #e:Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v9

    .line 179
    .local v9, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    .line 180
    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v9

    .line 181
    .local v9, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v9}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_3

    .line 182
    .end local v9           #e:Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v9

    .line 183
    .local v9, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v9}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_3

    .line 184
    .end local v9           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_6
    move-exception v9

    .line 185
    .local v9, e:Ljava/lang/NullPointerException;
    invoke-virtual {v9}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3

    .line 192
    .end local v9           #e:Ljava/lang/NullPointerException;
    :cond_5
    const-string v20, "AresEngineFactor"

    const-string v21, "liuji debug mController == null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public hangup(I)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEAresEngineFactor$CustomPhoneDeviceController;->mController:Ltmsdk/bg/module/aresengine/PhoneDeviceController;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEAresEngineFactor$CustomPhoneDeviceController;->mController:Ltmsdk/bg/module/aresengine/PhoneDeviceController;

    invoke-virtual {v0, p1}, Ltmsdk/bg/module/aresengine/PhoneDeviceController;->hangup(I)V

    .line 215
    :cond_0
    return-void
.end method

.method public varargs unBlockSms(Ltmsdk/common/module/aresengine/SmsEntity;[Ljava/lang/Object;)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 205
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEAresEngineFactor$CustomPhoneDeviceController;->mController:Ltmsdk/bg/module/aresengine/PhoneDeviceController;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEAresEngineFactor$CustomPhoneDeviceController;->mController:Ltmsdk/bg/module/aresengine/PhoneDeviceController;

    invoke-virtual {v0, p1, p2}, Ltmsdk/bg/module/aresengine/PhoneDeviceController;->unBlockSms(Ltmsdk/common/module/aresengine/SmsEntity;[Ljava/lang/Object;)V

    .line 208
    :cond_0
    return-void
.end method
