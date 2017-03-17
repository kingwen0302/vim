" 个人love主题
" 使用ColorNext/ColorPrev在g:colorschemes_love列表中选择
let g:colorschemes_next = -1
let g:colorschemes_love = [
            \'desert',
            \'abra',
            \'blink',
            \'solarized',
            \'manuscript',
            \'smpl',
            \'tchaba',
            \'editplus'
            \]

" 切换时间
let g:colorschemes_timer = 20 * 60 * 1000
" 0-自动切换时间
let g:colorschemes_auto_change = 0

if !exists('g:colorschemes_auto_change')
    let g:colorschemes_auto_change = 1
endif

" 随机主题,从all中获取, all中有大概800个主题
" 使用ColorRand随机
" 若不喜欢, 加到g:colorschemes_remove中
let g:colorschemes_all = ['desert']

" 所有主题
for i in split(globpath(&rtp, "colors/*.vim"), "\n")
    call add(g:colorschemes_all, fnamemodify(expand(i), ":t:r"))
endfor

" 不喜欢的主题
let g:colorschemes_remove = [
            \'blacklight', '256_noir', 'adam', 'adobe', 'adrian', 'af',
            \'aiseered', 'aqua', 'argonaut', 'ashen', 'base', 'basic',
            \'blue', 'bluez', 'bocau', 'bog', 'brookstrem', 'buddy_modified',
            \'busierbee', 'bw', 'carvedwoodcool', 'chlordane', 'coffee',
            \'blackdust', 'BlackSea',
            \'base16-ateliercave',
            \'base16-atelierdune',
            \'base16-atelierestuary',
            \'base16-atelierforest',
            \'base16-atelierheath',
            \'base16-atelierlakeside',
            \'base16-atelierplateau',
            \'base16-ateliersavanna',
            \'base16-atelierseaside',
            \'base16-ateliersulphurpool',
            \'base16-railscasts',
            \'c',
            \'0x7A69_dark',
            \'1989',
            \'256-grayvim',
            \'256-jungle',
            \'abbott',
            \'adaryn',
            \'beauty256',
            \'beekai',
            \'bclear',
            \'mine',
            \'radicalgoodspeed',
            \'d8g_01',
            \'d8g_02',
            \'d8g_03',
            \'d8g_04',
            \'colorsbox-faff',
            \'colorsbox-greenish',
            \'colorsbox-material',
            \'colorsbox-stblue',
            \'colorsbox-stbright',
            \'colorsbox-steighties',
            \'colorsbox-stnight',
            \'duotone-dark',
            \'duotone-darkcave',
            \'duotone-darkdesert',
            \'duotone-darkearth',
            \'duotone-darkforest',
            \'duotone-darkheath',
            \'duotone-darklake',
            \'duotone-darkmeadow',
            \'duotone-darkpark',
            \'duotone-darkpool',
            \'duotone-darksea',
            \'duotone-darkspace',
            \'pablo',
            \'Tomorrow',
            \'Tomorrow-Night',
            \'Tomorrow-Night-Blue',
            \'Tomorrow-Night-Bright',
            \'Tomorrow-Night-Eighties',
            \'lizard',
            \'moonshine',
            \'moonshine_lowcontrast',
            \'print_bw',
            \'cake',
            \'cake16',
            \'bubblegum',
            \'bubblegum-256-dark',
            \'bubblegum-256-light',
            \'darker-robin',
            \'darkerdesert',
            \'genericdc',
            \'genericdc-light',
            \'neverland',
            \'neverland2',
            \'neverland2-darker',
            \'neverland-darker',
            \'wombat',
            \'wombat256',
            \'wombat256i',
            \'wombat256mod',
            \'bluechia',
            \'bluedrake',
            \'bluegreen',
            \'blueprint',
            \'blueshift',
            \'blugrine',
            \'darkblack',
            \'darkBlue',
            \'darkblue2',
            \'darkbone',
            \'darkburn',
            \'darkdot',
            \'darkeclipse',
            \'darkocean',
            \'darkrobot',
            \'dark-ruby',
            \'darkslategray',
            \'darkspectrum',
            \'darktango',
            \'darkZ',
            \'darkzen',
            \'flatcolor',
            \'flatland',
            \'flatlandia',
            \'flattened_dark',
            \'flattened_light',
            \'flattown',
            \'flattr',
            \'flatui',
            \'atom',
            \'luna',
            \'luna-term',
            \'miko',
            \'kkruby',
            \'kruby',
            \'landscape',
            \'kib_darktango',
            \'kib_plastic',
            \'lilydjwg_dark',
            \'lilydjwg_green',
            \'matrix',
            \'putty',
            \'manuscript',
            \'clarity',
            \'tchaba',
            \'mud',
            \'guardian',
            \'kiss',
            \'kolor',
            \'umber-green',
            \'late_evening',
            \'magicwb'
            \]

for i in g:colorschemes_remove
    let i = index(g:colorschemes_all, i)
    if i != -1
        call remove(g:colorschemes_all, i)
    endif
endfor

func! ColorChange(timer)
    let timer = timer_start(g:colorschemes_timer, 'ColorChange')
    let g:colorschemes_next += 1
    let len = len(g:colorschemes_love)
    let g:colorschemes_next = (g:colorschemes_next + len) % len
    if g:colorschemes_love[g:colorschemes_next] == 'solarized'
        :set background=dark
    endif
    execute 'colo' g:colorschemes_love[g:colorschemes_next]
endfunc

func! ColorNext(next)
    let g:colorschemes_next += a:next
    let len = len(g:colorschemes_love)
    let g:colorschemes_next = (g:colorschemes_next + len) % len
    execute 'colo' g:colorschemes_love[g:colorschemes_next]
endfunc

func! ColorRand()
    let g:colorschemes_rand = localtime() % len(g:colorschemes_all)
    execute 'colo' g:colorschemes_all[g:colorschemes_rand]
endfunc

if has('timers') && g:colorschemes_auto_change
    call ColorChange(0)
else
    call ColorNext(1)
endif

command! -nargs=0 ColorNext call ColorNext(1)
command! -nargs=0 ColorPrev call ColorNext(-1)
command! -nargs=0 ColorRand call ColorRand()

