local QBCore = exports['qb-core']:GetCoreObject()

local Webhooks = {
    ['default'] = 'https://discord.com/api/webhooks/951780718084751402/N4_dsaQiz3mAss6RooVkpBffBaLCWq8VGO2-VcY5SgKwLRLwP-AkmiDvVr54mEzhewSc',
    ['playermoney'] = 'https://discord.com/api/webhooks/951780860716261426/UR_ya5zJe7QZ25UE724I1GWK3cmpPWukZfu-IkWFQ7a_DeBQLs7FsNsYVvClBXZIef0H',
    ['playerinventory'] = 'https://discord.com/api/webhooks/951780916395671572/47mjvMIsHr3UhBvIPJ6tSC2dfDSO2VpZIrEhllAAH1bPiBh3st5A-3MU8mPKemofBU_v',
    ['robbing'] = 'https://discord.com/api/webhooks/951780968354689044/hsx1tCZ1fpMI_eRk6gFXWyQFDurJV6MyWcPcS9GmsOjR_v5ngXG3KgYsE0L21hfc-lTN',
    ['drop'] = 'https://discord.com/api/webhooks/951781052672782356/h8Ts-pjqWvlueLWvmS-lg2IPNNwhb3CzVdEuu_O15tcxvs3D8OkZGGdCMGujgTUXLic7',
    ['trunk'] = 'https://discord.com/api/webhooks/951781090920632331/oyAEMgzjBLfdPFUclB_OJjK7Ep2CPDcS5YQs4WGenZhKDj9TMvrK3_3QajFMDgG1P9qn',
    ['stash'] = 'https://discord.com/api/webhooks/951776375499534338/DxHOESSc2gs3mTy1y34kLDMuDa8F6ihyd6Nm5A79ypVojNXJ_KHsHpChB0gWCs1lcl16',
    ['glovebox'] = 'https://discord.com/api/webhooks/951781129424371742/RfHMHxqmevSgPfAK-neFzvHplHtzp3p8wLuCLlEbz5ehoRz3eOuD742GGbPQJMqCVlvv',
    ['banking'] = 'https://discord.com/api/webhooks/951781167047278672/u7ckTcArQfMYxIUTntayX8O1lPC73zB3dRVAj_QxmBvJVkPoYW2EcZRP_2u3VUKsSygQ',
    ['vehicleshop'] = 'https://discord.com/api/webhooks/951781203726467112/-Apzu9VLgdPN0UT3BjblUEKeJiJPokctrn6uX6pawa09xCIl1rxn5fMo0MV4nbF6F0tn',
    ['shops'] = 'https://discord.com/api/webhooks/951791848081457202/KrHSQ8eXI23fQqvDzaKwop69YhxmOgUFj4BxZMYEwGmq8v2M7qiWkNDLjGFjO_wF_4g0',
    ['storerobbery'] = 'https://discord.com/api/webhooks/951791932709937152/aYfk7kjvnBrCRUjKuOKqRYagkkpRqIsG81VY9BtVUZbYZNfnbI_3o-ttjGqqmAXs7Q-_',
    ['bankrobbery'] = 'https://discord.com/api/webhooks/951791972434194493/03gBmWxit5cBYPeFebsmGmP5ymC_nZK-Q_0JIN_rawRSbrOrmoaZ1UzgrlzCPcy2C2gL',
    ['powerplants'] = 'https://discord.com/api/webhooks/951792013068615690/yA_2nxx03vD75j3n1ZjoJyhfqO1ZXGaEfE1Ib7Naqc2LwmeQgyszRPj62c8zWikF2vFk',
    ['death'] = 'https://discord.com/api/webhooks/951792049361924096/xzsdqYxvw_PGv-RU_o8FGcm-wyUDpwVOfqF9mqVOgMaL_cltPONpZbk9QFvRwo8KUmrl',
    ['joinleave'] = 'https://discord.com/api/webhooks/951792086083059712/hSrI6AOAAq7xEYq69zBkvp--Cr9itwlQ6g_DMrFGdGVQe4JhF4a7VW9yAlH06rV8BrAc',
    ['ooc'] = 'https://discord.com/api/webhooks/951792120610578483/XH5QA38iUohsKESw-owluufhX4dJB5gbsyY2z9Jyqbqhsv5WUId3vJ9WjwOOci5i50lS',
    ['bans'] = 'https://discord.com/api/webhooks/951792276005335090/NPN4A0ETgN9fWEPSl1d-tATbKtY_rrlArcUEZYPEIFy9sbHiEXcwLRnYmZi4xirff0nh',
    ['anticheat'] = 'https://discord.com/api/webhooks/951792362571595817/z7ErgJ4uhJ6CdcvwM2PROJdilKYRaVnxoA_cnviX3u-O4o8n_rL7wLdgwjC-m4hIDZTE',
    ['moneysafes'] = 'https://discord.com/api/webhooks/951792407081521182/P88W_EhT1HXrQePQE5qU-hzgI_GjCiYhfdIMJS6MaW0uyL6YvEJeRAwoR5zdnm0Prvkc',
    ['bennys'] = 'https://discord.com/api/webhooks/951792443437776957/_eIxqFHp36HZsVhVUMqAGam7bmhvYsjMqkwexh5kavZ7efjWpcpAegcqgGlk32lik05c',
    ['bossmenu'] = 'https://discord.com/api/webhooks/951792479097745418/cRp2DAqegsmHMu5ZORjK15f-PY70gqnkQJIfWuJTTCnowur_dvgcYyEpbVV5TOW1d7HH',
    ['casino'] = 'https://discord.com/api/webhooks/951792551592091668/5EqRnpUeFqqe49Tfu73NxO3cPTVv8FlxIKBtI9xFBffFj-xOtUCMK3N2UiXq5nrQJ4P6',
    ['traphouse'] = 'https://discord.com/api/webhooks/951792588246093844/-xq-XiruIKxSUA6KpLR84GocDY9M0wXr1nnGEJrxqqYtzgjTYX561N_sE-ikUNiCofRP',
    ['911'] = 'https://discord.com/api/webhooks/951792619724341259/IWrCJPr1ypo9u0VKPVtgAA3kP8OWpUW7T6bEJ6iNKzSU4uyrTtrddNFNUwPxrqBvGJ5w',
    ['house'] = 'https://discord.com/api/webhooks/951792689609850920/BG9SdTnQTtSHBdEqhSb1BTgpWQm4QIqKTP6KGLdftvtMjBhHMBG0QMAuEqp0zpRViDXJ',
    ['keylabs'] = 'https://discord.com/api/webhooks/959893707971252264/9OK0uZEOKUSUA9US0nDtfp3SRG09bE-4Frz4sSXJiHhXhQnFJr9USkBGdcvW2VU_dpQH',
    ['carboosting'] = 'https://discord.com/api/webhooks/959895878573916260/MuA198i1jCy3qI59s-QpQawoH16MEGzSqgs55zacguUDhsSODnW-NMk399X5tshPChYh',
    ['truckrobbery'] = 'https://discord.com/api/webhooks/960526360017776680/7oKhkLZCLfYFK8GnCet5-5HB5LgCX3yMS9XT2er1guMym7GJSjxwhKxukZA9FfZ3-Hwi',
    ['vehicleupgrades'] = 'https://discord.com/api/webhooks/1013852883671855124/zAiPXyrE9CE6CWd_GtZq2RdqsXWtMqgIQHmfCcyAkTDWgy-T_c8gfY5EyzCP4MMoh01G',
}

local Colors = { -- https://www.spycolor.com/
    ['default'] = 14423100,
    ['blue'] = 255,
    ['red'] = 16711680,
    ['green'] = 65280,
    ['white'] = 16777215,
    ['black'] = 0,
    ['orange'] = 16744192,
    ['yellow'] = 16776960,
    ['pink'] = 16761035,
    ["lightgreen"] = 65309,
}

RegisterNetEvent('qb-log:server:CreateLog', function(name, title, color, message, tagEveryone)
    local tag = tagEveryone or false
    local webHook = Webhooks[name] or Webhooks['default']
    local embedData = {
        {
            ['title'] = title,
            ['color'] = Colors[color] or Colors['default'],
            ['footer'] = {
                ['text'] = os.date('%c'),
            },
            ['description'] = message,
            ['author'] = {
                ['name'] = 'QBCore Logs',
                ['icon_url'] = 'https://media.discordapp.net/attachments/870094209783308299/870104331142189126/Logo_-_Display_Picture_-_Stylized_-_Red.png?width=670&height=670',
            },
        }
    }
    PerformHttpRequest(webHook, function() end, 'POST', json.encode({ username = 'QB Logs', embeds = embedData}), { ['Content-Type'] = 'application/json' })
    Citizen.Wait(100)
    if tag then
        PerformHttpRequest(webHook, function() end, 'POST', json.encode({ username = 'QB Logs', content = '@everyone'}), { ['Content-Type'] = 'application/json' })
    end
end)

QBCore.Commands.Add('testwebhook', 'Test Your Discord Webhook For Logs (God Only)', {}, false, function()
    TriggerEvent('qb-log:server:CreateLog', 'testwebhook', 'Test Webhook', 'default', 'Webhook setup successfully')
end, 'god')
